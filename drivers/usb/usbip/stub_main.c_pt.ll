; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/stub_main.c_pt.bc'
source_filename = "../drivers/usb/usbip/stub_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_id_priv = type { [32 x i8], i8, i32, ptr, ptr, i8, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.usb_device_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usbdrv_wrap, ptr, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stub_priv = type { i32, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.stub_device = type { ptr, %struct.usbip_device, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }

@busid_table_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@busid_table = internal global { [16 x %struct.bus_id_priv], [384 x i8] } zeroinitializer, align 32
@stub_priv_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@stub_device_cleanup_urbs.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_host\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stub_device_cleanup_urbs\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/usbip/stub_main.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stub device cleaning up urbs\0A\00", [34 x i8] zeroinitializer }, align 32
@stub_driver = external dso_local global %struct.usb_device_driver, align 4
@driver_attr_match_busid = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @match_busid_show, ptr @match_busid_store }, [36 x i8] zeroinitializer }, align 32
@driver_attr_rebind = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @rebind_store }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_usbip_host__244_425_usbip_host_init6 = internal global ptr @usbip_host_init, section ".initcall6.init", align 4
@__exitcall_usbip_host_exit = internal global ptr @usbip_host_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [37 x i8] c"usbip_host.author=Takahiro Hirofuchi\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [42 x i8] c"usbip_host.description=USB/IP Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [45 x i8] c"usbip_host.file=drivers/usb/usbip/usbip-host\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [23 x i8] c"usbip_host.license=GPL\00", section ".modinfo", align 1
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"busid_table_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"match_busid\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"add \00", [27 x i8] zeroinitializer }, align 32
@match_busid_store.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"match_busid_store\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add busid %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usbip_host: %s:%d: add busid %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"del \00", [27 x i8] zeroinitializer }, align 32
@match_busid_store.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"del busid %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usbip_host: %s:%d: del busid %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rebind\00", [25 x i8] zeroinitializer }, align 32
@do_rebind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 212, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rebind failed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_rebind\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@do_rebind._entry_ptr = internal global ptr @do_rebind._entry, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stub_priv\00", [22 x i8] zeroinitializer }, align 32
@usbip_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013usbip_host: %s:%d: kmem_cache_create failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbip_host_init\00", [16 x i8] zeroinitializer }, align 32
@usbip_host_init._entry_ptr = internal global ptr @usbip_host_init._entry, section ".printk_index", align 4
@usbip_host_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013usbip_host: %s:%d: usb_register failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@usbip_host_init._entry_ptr.25 = internal global ptr @usbip_host_init._entry.23, section ".printk_index", align 4
@usbip_host_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013usbip_host: %s:%d: driver_create_file failed\0A\00", [48 x i8] zeroinitializer }, align 32
@usbip_host_init._entry_ptr.28 = internal global ptr @usbip_host_init._entry.26, section ".printk_index", align 4
@usbip_host_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usbip_host_init._entry_ptr.30 = internal global ptr @usbip_host_init._entry.29, section ".printk_index", align 4
@init_busid_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&busid_table[i].busid_lock\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"busid_table_lock\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"busid_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 25, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"stub_priv_cache\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 17, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 354, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"driver_attr_match_busid\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"driver_attr_rebind\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 26, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 199, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 158, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 181, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 185, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 189, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 193, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 276, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 212, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 370, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 372, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 378, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 385, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 392, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [33 x i8] c"../drivers/usb/usbip/stub_main.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 39, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_usbip_host_exit, ptr @__initcall__kmod_usbip_host__244_425_usbip_host_init6, ptr @do_rebind._entry, ptr @do_rebind._entry_ptr, ptr @usbip_host_exit, ptr @usbip_host_init._entry, ptr @usbip_host_init._entry.23, ptr @usbip_host_init._entry.26, ptr @usbip_host_init._entry.29, ptr @usbip_host_init._entry_ptr, ptr @usbip_host_init._entry_ptr.25, ptr @usbip_host_init._entry_ptr.28, ptr @usbip_host_init._entry_ptr.30, ptr @busid_table_lock, ptr @busid_table, ptr @stub_priv_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @driver_attr_match_busid, ptr @driver_attr_rebind, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @init_busid_table.__key, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @busid_table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @busid_table to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_priv_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_match_busid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_rebind to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rebind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_host_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_host_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_host_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_busid_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_busid_priv(ptr nocapture noundef readonly %busid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @busid_table_lock) #8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i
  %busid_lock.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i, i32 6
  tail call void @_raw_spin_lock(ptr noundef %busid_lock.i) #8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.body.i.if.end9.i_crit_edge, label %if.then.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %for.body.i
  %call.i = tail call i32 @strncmp(ptr noundef %arrayidx.i, ptr noundef %busid, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %get_busid_idx.exit, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %for.body.i.if.end9.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end9.i.if.end_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

get_busid_idx.exit:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  tail call void @_raw_spin_lock(ptr noundef %busid_lock.i) #8
  br label %if.end

if.end:                                           ; preds = %get_busid_idx.exit, %if.end9.i.if.end_crit_edge
  %bid.0 = phi ptr [ %arrayidx.i, %get_busid_idx.exit ], [ null, %if.end9.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @busid_table_lock) #8
  ret ptr %bid.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_busid_priv(ptr noundef %bid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %busid_lock = getelementptr inbounds %struct.bus_id_priv, ptr %bid, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @del_match_busid(ptr nocapture noundef readonly %busid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @busid_table_lock) #8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i
  %busid_lock.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i, i32 6
  tail call void @_raw_spin_lock(ptr noundef %busid_lock.i) #8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.body.i.if.end9.i_crit_edge, label %if.then.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %for.body.i
  %call.i = tail call i32 @strncmp(ptr noundef %arrayidx.i, ptr noundef %busid, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %get_busid_idx.exit, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %for.body.i.if.end9.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end9.i.out_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end9.i.out_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

get_busid_idx.exit:                               ; preds = %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  tail call void @_raw_spin_lock(ptr noundef %busid_lock.i) #8
  %status = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.then17 [
    i8 0, label %if.end6.thread
    i8 2, label %get_busid_idx.exit.if.end20_crit_edge
  ]

get_busid_idx.exit.if.end20_crit_edge:            ; preds = %get_busid_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end6.thread:                                   ; preds = %get_busid_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 32)
  br label %if.end20

if.then17:                                        ; preds = %get_busid_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end6.thread, %get_busid_idx.exit.if.end20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  br label %out

out:                                              ; preds = %if.end20, %if.end9.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end20 ], [ -1, %if.end9.i.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @busid_table_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stub_free_priv_and_urb(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_urbs = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp46 = icmp sgt i32 %1, 0
  br i1 %cmp46, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %urbs = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 3
  %sgl = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %2 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urbs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %setup_packet = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %setup_packet to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %setup_packet, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgl, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %10) #8
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %transfer_buffer, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %num_sgs = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 18
  %14 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %sg = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 16
  %16 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sg, align 4
  tail call void @sgl_free(ptr noundef %17) #8
  %18 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sg, align 4
  %19 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_sgs, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %5) #8
  %inc = add nuw nsw i32 %i.047, 1
  %20 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_urbs, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  %list = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %23, %list
  br i1 %cmp.i.not, label %for.end.if.end16_crit_edge, label %if.then14

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %list_del.exit, %for.end.if.end16_crit_edge
  %sgl17 = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 4
  %32 = ptrtoint ptr %sgl17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sgl17, align 4
  %tobool18.not = icmp eq ptr %33, null
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sgl_free(ptr noundef nonnull %33) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %urbs22 = getelementptr inbounds %struct.stub_priv, ptr %priv, i32 0, i32 3
  %34 = ptrtoint ptr %urbs22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %urbs22, align 4
  tail call void @kfree(ptr noundef %35) #8
  %36 = load ptr, ptr @stub_priv_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef %priv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stub_device_cleanup_urbs(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_device_cleanup_urbs.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_device_cleanup_urbs, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_device_cleanup_urbs.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv_lock.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 3
  %priv_init.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 4
  %priv_tx.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 5
  %priv_free.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %for.end, %do.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #8
  %2 = ptrtoint ptr %priv_init.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_init.i, align 4
  %cmp.not.i.i = icmp eq ptr %3, %priv_init.i
  br i1 %cmp.not.i.i, label %while.cond.if.end.i_crit_edge, label %for.body.i.i

while.cond.if.end.i_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i.i:                                     ; preds = %while.cond
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.stub_priv_pop_from_listhead.exit.i_crit_edge

for.body.i.i.stub_priv_pop_from_listhead.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stub_priv_pop_from_listhead.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %stub_priv_pop_from_listhead.exit.i

stub_priv_pop_from_listhead.exit.i:               ; preds = %if.end.i.i.i.i, %for.body.i.i.stub_priv_pop_from_listhead.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %stub_priv_pop_from_listhead.exit.i.if.end.i_crit_edge, label %stub_priv_pop_from_listhead.exit.i.stub_priv_pop.exit.thread19_crit_edge

stub_priv_pop_from_listhead.exit.i.stub_priv_pop.exit.thread19_crit_edge: ; preds = %stub_priv_pop_from_listhead.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stub_priv_pop.exit.thread19

stub_priv_pop_from_listhead.exit.i.if.end.i_crit_edge: ; preds = %stub_priv_pop_from_listhead.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %stub_priv_pop_from_listhead.exit.i.if.end.i_crit_edge, %while.cond.if.end.i_crit_edge
  %12 = ptrtoint ptr %priv_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv_tx.i, align 4
  %cmp.not.i18.i = icmp eq ptr %13, %priv_tx.i
  br i1 %cmp.not.i18.i, label %if.end.i.if.end9.i_crit_edge, label %for.body.i21.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

for.body.i21.i:                                   ; preds = %if.end.i
  %add.ptr.i19.i = getelementptr i8, ptr %13, i32 -4
  %call.i.i.i20.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #8
  br i1 %call.i.i.i20.i, label %if.end.i.i.i24.i, label %for.body.i21.i.stub_priv_pop_from_listhead.exit28.i_crit_edge

for.body.i21.i.stub_priv_pop_from_listhead.exit28.i_crit_edge: ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stub_priv_pop_from_listhead.exit28.i

if.end.i.i.i24.i:                                 ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i22.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i22.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i23.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i23.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %stub_priv_pop_from_listhead.exit28.i

stub_priv_pop_from_listhead.exit28.i:             ; preds = %if.end.i.i.i24.i, %for.body.i21.i.stub_priv_pop_from_listhead.exit28.i_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %13, ptr %13, align 4
  %prev.i3.i.i25.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %13, ptr %prev.i3.i.i25.i, align 4
  %tobool7.not.i = icmp eq ptr %add.ptr.i19.i, null
  br i1 %tobool7.not.i, label %stub_priv_pop_from_listhead.exit28.i.if.end9.i_crit_edge, label %stub_priv_pop_from_listhead.exit28.i.stub_priv_pop.exit.thread19_crit_edge

stub_priv_pop_from_listhead.exit28.i.stub_priv_pop.exit.thread19_crit_edge: ; preds = %stub_priv_pop_from_listhead.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stub_priv_pop.exit.thread19

stub_priv_pop_from_listhead.exit28.i.if.end9.i_crit_edge: ; preds = %stub_priv_pop_from_listhead.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %stub_priv_pop_from_listhead.exit28.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %22 = ptrtoint ptr %priv_free.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv_free.i, align 4
  %cmp.not.i29.i = icmp eq ptr %23, %priv_free.i
  br i1 %cmp.not.i29.i, label %stub_priv_pop.exit.thread, label %for.body.i32.i

stub_priv_pop.exit.thread:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call2.i) #8
  br label %while.end

for.body.i32.i:                                   ; preds = %if.end9.i
  %add.ptr.i30.i = getelementptr i8, ptr %23, i32 -4
  %call.i.i.i31.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #8
  br i1 %call.i.i.i31.i, label %if.end.i.i.i35.i, label %for.body.i32.i.stub_priv_pop.exit_crit_edge

for.body.i32.i.stub_priv_pop.exit_crit_edge:      ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stub_priv_pop.exit

if.end.i.i.i35.i:                                 ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i33.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i33.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i34.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %stub_priv_pop.exit

stub_priv_pop.exit.thread19:                      ; preds = %stub_priv_pop_from_listhead.exit28.i.stub_priv_pop.exit.thread19_crit_edge, %stub_priv_pop_from_listhead.exit.i.stub_priv_pop.exit.thread19_crit_edge
  %priv.0.i.ph = phi ptr [ %add.ptr.i19.i, %stub_priv_pop_from_listhead.exit28.i.stub_priv_pop.exit.thread19_crit_edge ], [ %add.ptr.i.i, %stub_priv_pop_from_listhead.exit.i.stub_priv_pop.exit.thread19_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call2.i) #8
  br label %for.cond.preheader

stub_priv_pop.exit:                               ; preds = %if.end.i.i.i35.i, %for.body.i32.i.stub_priv_pop.exit_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i.i36.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %23, ptr %prev.i3.i.i36.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call2.i) #8
  %tobool5.not = icmp eq ptr %add.ptr.i30.i, null
  br i1 %tobool5.not, label %stub_priv_pop.exit.while.end_crit_edge, label %stub_priv_pop.exit.for.cond.preheader_crit_edge

stub_priv_pop.exit.for.cond.preheader_crit_edge:  ; preds = %stub_priv_pop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

stub_priv_pop.exit.while.end_crit_edge:           ; preds = %stub_priv_pop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond.preheader:                               ; preds = %stub_priv_pop.exit.for.cond.preheader_crit_edge, %stub_priv_pop.exit.thread19
  %priv.0.i22 = phi ptr [ %priv.0.i.ph, %stub_priv_pop.exit.thread19 ], [ %add.ptr.i30.i, %stub_priv_pop.exit.for.cond.preheader_crit_edge ]
  %num_urbs = getelementptr inbounds %struct.stub_priv, ptr %priv.0.i22, i32 0, i32 5
  %32 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16 = icmp sgt i32 %33, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %urbs = getelementptr inbounds %struct.stub_priv, ptr %priv.0.i22, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %34 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %urbs, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %i.017
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %37) #8
  %inc = add nuw nsw i32 %i.017, 1
  %38 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_urbs, align 4
  %cmp = icmp slt i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @stub_free_priv_and_urb(ptr noundef nonnull %priv.0.i22)
  br label %while.cond

while.end:                                        ; preds = %stub_priv_pop.exit.while.end_crit_edge, %stub_priv_pop.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbip_host_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_remove_file(ptr noundef getelementptr inbounds (%struct.usb_device_driver, ptr @stub_driver, i32 0, i32 7), ptr noundef nonnull @driver_attr_match_busid) #8
  tail call void @driver_remove_file(ptr noundef getelementptr inbounds (%struct.usb_device_driver, ptr @stub_driver, i32 0, i32 7), ptr noundef nonnull @driver_attr_rebind) #8
  tail call void @usb_deregister_device_driver(ptr noundef nonnull @stub_driver) #8
  %0 = load ptr, ptr @stub_priv_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_device_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbip_host_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @busid_table, i32 0, i32 1536)
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 0, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 1, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 2, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 3, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 4, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 5, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 6, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 7, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 8, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 9, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 10, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 11, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 12, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 13, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 14, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds ([16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 15, i32 6), ptr noundef nonnull @.str.31, ptr noundef nonnull @init_busid_table.__key, i16 noundef signext 3) #8
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.20, i32 noundef 40, i32 noundef 4, i32 noundef 8192, ptr noundef null) #8
  store ptr %call, ptr @stub_priv_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 372) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usb_register_device_driver(ptr noundef nonnull @stub_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 378, i32 noundef %call2) #11
  br label %err_usb_register

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @driver_create_file(ptr noundef getelementptr inbounds (%struct.usb_device_driver, ptr @stub_driver, i32 0, i32 7), ptr noundef nonnull @driver_attr_match_busid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %if.end10.err_create_file_crit_edge

if.end10.err_create_file_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_create_file

if.end19:                                         ; preds = %if.end10
  %call20 = tail call i32 @driver_create_file(ptr noundef getelementptr inbounds (%struct.usb_device_driver, ptr @stub_driver, i32 0, i32 7), ptr noundef nonnull @driver_attr_rebind) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_create_file_crit_edge

if.end19.err_create_file_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_create_file

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_create_file:                                  ; preds = %if.end19.err_create_file_crit_edge, %if.end10.err_create_file_crit_edge
  %.sink = phi i32 [ 385, %if.end10.err_create_file_crit_edge ], [ 392, %if.end19.err_create_file_crit_edge ]
  %ret.0 = phi i32 [ %call11, %if.end10.err_create_file_crit_edge ], [ %call20, %if.end19.err_create_file_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %.sink) #11
  tail call void @usb_deregister_device_driver(ptr noundef nonnull @stub_driver) #8
  br label %err_usb_register

err_usb_register:                                 ; preds = %err_create_file, %do.end7
  %ret.1 = phi i32 [ %call2, %do.end7 ], [ %ret.0, %err_create_file ]
  %1 = load ptr, ptr @stub_priv_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %err_usb_register, %if.end19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_usb_register ], [ -12, %do.end ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @match_busid_show(ptr nocapture noundef readnone %drv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @busid_table_lock) #8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %out.020 = phi ptr [ %buf, %entry ], [ %out.1, %if.end.for.body_crit_edge ]
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.019
  %busid_lock = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.019, i32 6
  tail call void @_raw_spin_lock(ptr noundef %busid_lock) #8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out.020, ptr noundef nonnull @.str.6, ptr noundef %arrayidx)
  %add.ptr = getelementptr i8, ptr %out.020, i32 %call
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %out.1 = phi ptr [ %add.ptr, %if.then ], [ %out.020, %for.body.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock) #8
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @busid_table_lock) #8
  %2 = ptrtoint ptr %out.1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 2560, ptr %out.1, align 1
  %add.ptr8 = getelementptr i8, ptr %out.1, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @match_busid_store(ptr nocapture noundef readnone %dev, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %busid = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %busid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %count)
  %cmp = icmp ult i32 %count, 5
  %0 = call ptr @memset(ptr %busid, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %call = call i32 @strlcpy(ptr noundef nonnull %busid, ptr noundef %add.ptr, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call)
  %cmp1 = icmp ugt i32 %call, 31
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end3
  call void @_raw_spin_lock(ptr noundef nonnull @busid_table_lock) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end9.i.i.for.body.i.i_crit_edge, %if.then5
  %i.020.i.i = phi i32 [ 0, %if.then5 ], [ %inc.i.i, %if.end9.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i.i
  %busid_lock.i.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.020.i.i, i32 6
  call void @_raw_spin_lock(ptr noundef %busid_lock.i.i) #8
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end9.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end9.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i = call i32 @strncmp(ptr noundef %arrayidx.i.i, ptr noundef nonnull %busid, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i.do.body_crit_edge, label %if.then.i.i.if.end9.i.i_crit_edge

if.then.i.i.if.end9.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then.i.i.do.body_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end9.i.i:                                      ; preds = %if.then.i.i.if.end9.i.i_crit_edge, %for.body.i.i.if.end9.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %busid_lock.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end9.i.i.for.body.i_crit_edge, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end9.i.i.for.body.i_crit_edge:                 ; preds = %if.end9.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %if.end9.i.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %if.end22.i.for.body.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.038.i
  %busid_lock.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.038.i, i32 6
  call void @_raw_spin_lock(ptr noundef %busid_lock.i) #8
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end22.i

if.then4.i:                                       ; preds = %for.body.i
  %call7.i = call i32 @strlcpy(ptr noundef %arrayidx.i, ptr noundef nonnull %busid, i32 noundef 32) #8
  %status.i = getelementptr [16 x %struct.bus_id_priv], ptr @busid_table, i32 0, i32 %i.038.i, i32 1
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status.i, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %6, label %if.then16.i [
    i8 3, label %if.then4.i.do.body_crit_edge
    i8 1, label %if.then4.i.do.body_crit_edge84
  ]

if.then4.i.do.body_crit_edge84:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then4.i.do.body_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then16.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %status.i, align 4
  br label %do.body

if.end22.i:                                       ; preds = %for.body.i
  call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %add_match_busid.exit, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

add_match_busid.exit:                             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef nonnull @busid_table_lock) #8
  br label %cleanup

do.body:                                          ; preds = %if.then16.i, %if.then4.i.do.body_crit_edge, %if.then4.i.do.body_crit_edge84, %if.then.i.i.do.body_crit_edge
  %busid_lock.i.lcssa.sink = phi ptr [ %busid_lock.i, %if.then16.i ], [ %busid_lock.i, %if.then4.i.do.body_crit_edge ], [ %busid_lock.i, %if.then4.i.do.body_crit_edge84 ], [ %busid_lock.i.i, %if.then.i.i.do.body_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %busid_lock.i.lcssa.sink) #8
  call void @_raw_spin_unlock(ptr noundef nonnull @busid_table_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_busid_store.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@match_busid_store, %cleanup)) #8
          to label %if.then16 [label %cleanup], !srcloc !84

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_busid_store.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 185, ptr noundef nonnull %busid) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end3
  %call20 = call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.12, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %call24 = call i32 @del_match_busid(ptr noundef nonnull %busid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then22.cleanup_crit_edge, label %do.body28

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_busid_store.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@match_busid_store, %cleanup)) #8
          to label %if.then42 [label %cleanup], !srcloc !84

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_busid_store.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 193, ptr noundef nonnull %busid) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body28, %if.then22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %do.body, %add_match_busid.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %add_match_busid.exit ], [ %count, %if.then16 ], [ -19, %if.then22.cleanup_crit_edge ], [ %count, %if.then42 ], [ -22, %if.end19.cleanup_crit_edge ], [ %count, %do.body ], [ %count, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %busid) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rebind_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strnlen(ptr noundef %buf, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp = icmp slt i32 %call, 32
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @get_busid_priv(ptr noundef %buf)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %put_busid_priv.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

put_busid_priv.exit:                              ; preds = %if.end
  %status = getelementptr inbounds %struct.bus_id_priv, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 4
  %busid_lock.i = getelementptr inbounds %struct.bus_id_priv, ptr %call1, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %busid_lock.i) #8
  %udev.i = getelementptr inbounds %struct.bus_id_priv, ptr %call1, i32 0, i32 4
  %1 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %tobool.not.i18 = icmp eq ptr %4, null
  br i1 %tobool.not.i18, label %put_busid_priv.exit.if.end.i_crit_edge, label %if.then.i19

put_busid_priv.exit.if.end.i_crit_edge:           ; preds = %put_busid_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i19:                                      ; preds = %put_busid_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i19, %put_busid_priv.exit.if.end.i_crit_edge
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %call.i = tail call i32 @device_attach(ptr noundef %dev5.i) #8
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %parent8.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent8.i, align 8
  %tobool9.not.i = icmp eq ptr %10, null
  br i1 %tobool9.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then10.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mutex.i1.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i1.i) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do_rebind.exit.thread, label %if.end7

do_rebind.exit.thread:                            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i, align 4
  %dev17.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @del_match_busid(ptr noundef %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do_rebind.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call.i, %do_rebind.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_device_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/stub_main.c", i32 354, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @stub_device_cleanup_urbs.__UNIQUE_ID_ddebug243, !1, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_usbip_host__244_425_usbip_host_init6, !7, !"__initcall__kmod_usbip_host__244_425_usbip_host_init6", i1 false, i1 false}
!7 = !{!"../drivers/usb/usbip/stub_main.c", i32 425, i32 1}
!8 = !{ptr @__exitcall_usbip_host_exit, !9, !"__exitcall_usbip_host_exit", i1 false, i1 false}
!9 = !{!"../drivers/usb/usbip/stub_main.c", i32 426, i32 1}
!10 = !{ptr @__UNIQUE_ID_author245, !11, !"__UNIQUE_ID_author245", i1 false, i1 false}
!11 = !{!"../drivers/usb/usbip/stub_main.c", i32 428, i32 1}
!12 = !{ptr @__UNIQUE_ID_description246, !13, !"__UNIQUE_ID_description246", i1 false, i1 false}
!13 = !{!"../drivers/usb/usbip/stub_main.c", i32 429, i32 1}
!14 = !{ptr @__UNIQUE_ID_file247, !15, !"__UNIQUE_ID_file247", i1 false, i1 false}
!15 = !{!"../drivers/usb/usbip/stub_main.c", i32 430, i32 1}
!16 = !{ptr @__UNIQUE_ID_license248, !15, !"__UNIQUE_ID_license248", i1 false, i1 false}
!17 = !{ptr @stub_priv_cache, !18, !"stub_priv_cache", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/stub_main.c", i32 17, i32 20}
!19 = !{ptr @busid_table, !20, !"busid_table", i1 false, i1 false}
!20 = !{!"../drivers/usb/usbip/stub_main.c", i32 25, i32 27}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/usbip/stub_main.c", i32 26, i32 8}
!23 = !{ptr @busid_table_lock, !22, !"busid_table_lock", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/usbip/stub_main.c", i32 199, i32 8}
!26 = !{ptr @driver_attr_match_busid, !25, !"driver_attr_match_busid", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/usbip/stub_main.c", i32 158, i32 24}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/usbip/stub_main.c", i32 162, i32 22}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/usbip/stub_main.c", i32 181, i32 20}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/usbip/stub_main.c", i32 185, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @match_busid_store.__UNIQUE_ID_ddebug241, !34, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/usbip/stub_main.c", i32 189, i32 20}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/usbip/stub_main.c", i32 193, i32 3}
!42 = !{ptr @match_busid_store.__UNIQUE_ID_ddebug242, !41, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!43 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/usbip/stub_main.c", i32 276, i32 8}
!46 = !{ptr @driver_attr_rebind, !45, !"driver_attr_rebind", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/usbip/stub_main.c", i32 212, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @do_rebind._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_rebind._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/usbip/stub_main.c", i32 370, i32 20}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/usbip/stub_main.c", i32 372, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @usbip_host_init._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @usbip_host_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/usbip/stub_main.c", i32 378, i32 3}
!63 = !{ptr @usbip_host_init._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @usbip_host_init._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/usbip/stub_main.c", i32 385, i32 3}
!67 = !{ptr @usbip_host_init._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @usbip_host_init._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @usbip_host_init._entry.29, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/usb/usbip/stub_main.c", i32 392, i32 3}
!71 = !{ptr @usbip_host_init._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @init_busid_table.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/usb/usbip/stub_main.c", i32 39, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148975923, i64 2148975928, i64 2148975941, i64 2148975985, i64 2148976019, i64 2148976040}
