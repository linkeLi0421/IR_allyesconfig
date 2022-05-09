; ModuleID = '/llk/IR_all_yes/drivers/misc/ti-st/st_kim.c_pt.bc'
source_filename = "../drivers/misc/ti-st/st_kim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.st_data_s = type { i32, ptr, i32, [16 x ptr], [16 x i8], i32, i32, ptr, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, i8, i32, ptr, ptr, %struct.work_struct }
%struct.sk_buff_head = type { %union.anon.18, i32, %struct.spinlock }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.21 }
%union.anon.21 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.kim_data_s = type { i32, ptr, %struct.completion, %struct.completion, [30 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.chip_version, i8, [33 x i8], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.chip_version = type { i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ti_st_plat_data = type { i32, [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.bts_action = type { i16, i16, [0 x i8] }
%struct.hci_command = type <{ i8, i16, i8, i32 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@st_kim_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016(stk) : %s\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_kim_start\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/misc/ti-st/st_kim.c\00", [36 x i8] zeroinitializer }, align 32
@st_kim_start._entry_ptr = internal global ptr @st_kim_start._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@st_kim_start._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016(stk) :ldisc_install = 1\00", [37 x i8] zeroinitializer }, align 32
@st_kim_start._entry_ptr.5 = internal global ptr @st_kim_start._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"install\00", [24 x i8] zeroinitializer }, align 32
@st_kim_start._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013(stk) :ldisc installation timeout\00", [60 x i8] zeroinitializer }, align 32
@st_kim_start._entry_ptr.9 = internal global ptr @st_kim_start._entry.7, section ".printk_index", align 4
@st_kim_start._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016(stk) :line discipline installed\00", [61 x i8] zeroinitializer }, align 32
@st_kim_start._entry_ptr.12 = internal global ptr @st_kim_start._entry.10, section ".printk_index", align 4
@st_kim_start._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stk) :download firmware failed\00", [62 x i8] zeroinitializer }, align 32
@st_kim_start._entry_ptr.15 = internal global ptr @st_kim_start._entry.13, section ".printk_index", align 4
@st_kim_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016(stk) :ldisc_install = 0\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st_kim_stop\00", [20 x i8] zeroinitializer }, align 32
@st_kim_stop._entry_ptr = internal global ptr @st_kim_stop._entry, section ".printk_index", align 4
@st_kim_stop._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013(stk) : timed out waiting for ldisc to be un-installed\00", [39 x i8] zeroinitializer }, align 32
@st_kim_stop._entry_ptr.20 = internal global ptr @st_kim_stop._entry.18, section ".printk_index", align 4
@__initcall__kmod_st_drv__281_842_kim_platform_driver_init6 = internal global ptr @kim_platform_driver_init, section ".initcall6.init", align 4
@kim_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kim_probe, ptr @kim_remove, ptr null, ptr @kim_suspend, ptr @kim_resume, %struct.device_driver { ptr @.str.88, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kim_platform_driver_exit = internal global ptr @kim_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author282 = internal constant [47 x i8] c"st_drv.author=Pavan Savoy <pavan_savoy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [73 x i8] c"st_drv.description=Shared Transport Driver for TI BT/FM/GPS combo chips \00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [38 x i8] c"st_drv.file=drivers/misc/ti-st/st_drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [19 x i8] c"st_drv.license=GPL\00", section ".modinfo", align 1
@kim_int_recv.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_drv\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kim_int_recv\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(stk) :%s\00", [22 x i8] zeroinitializer }, align 32
@kim_int_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stk) : received null from TTY \00", [62 x i8] zeroinitializer }, align 32
@kim_int_recv._entry_ptr = internal global ptr @kim_int_recv._entry, section ".printk_index", align 4
@kim_int_recv.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Complete pkt received\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(stk) :Complete pkt received\00", [35 x i8] zeroinitializer }, align 32
@kim_int_recv.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.28, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"event hdr: plen 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(stk) :event hdr: plen 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@kim_int_recv._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016(stk) :unknown packet\00", [40 x i8] zeroinitializer }, align 32
@kim_int_recv._entry_ptr.32 = internal global ptr @kim_int_recv._entry.30, section ".printk_index", align 4
@kim_int_recv._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013(stk) :can't allocate mem for new packet\00", [53 x i8] zeroinitializer }, align 32
@kim_int_recv._entry_ptr.35 = internal global ptr @kim_int_recv._entry.33, section ".printk_index", align 4
@validate_firmware_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013(stk) :no proper response during fw download\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"validate_firmware_response\00", [37 x i8] zeroinitializer }, align 32
@validate_firmware_response._entry_ptr = internal global ptr @validate_firmware_response._entry, section ".printk_index", align 4
@validate_firmware_response._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013(stk) :data6 %x\00", [46 x i8] zeroinitializer }, align 32
@validate_firmware_response._entry_ptr.40 = internal global ptr @validate_firmware_response._entry.38, section ".printk_index", align 4
@kim_check_data_len.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kim_check_data_len\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"len %d room %d\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(stk) :len %d room %d\00", [42 x i8] zeroinitializer }, align 32
@kim_check_data_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013(stk) :Data length is too large len %d room %d\00", [47 x i8] zeroinitializer }, align 32
@kim_check_data_len._entry_ptr = internal global ptr @kim_check_data_len._entry, section ".printk_index", align 4
@download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013(stk) :kim: failed to read local ver\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"download_firmware\00", [46 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr = internal global ptr @download_firmware._entry, section ".printk_index", align 4
@download_firmware._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013(stk) : request_firmware failed(errno %ld) for %s\00", [44 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.49 = internal global ptr @download_firmware._entry.47, section ".printk_index", align 4
@download_firmware.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" action size %d, type %d \00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(stk) : action size %d, type %d \00", [63 x i8] zeroinitializer }, align 32
@download_firmware.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.46, ptr @.str.2, ptr @.str.52, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(stk) :S\00", [23 x i8] zeroinitializer }, align 32
@download_firmware._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014(stk) :change remote baud rate command in firmware\00", [43 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.56 = internal global ptr @download_firmware._entry.54, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@download_firmware._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.46, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013(stk) :Unable to get free space info from uart tx buffer\00", [37 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.59 = internal global ptr @download_firmware._entry.57, section ".printk_index", align 4
@download_firmware._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.46, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013(stk) :Timeout while waiting for free free space in uart tx buffer\00", [59 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.62 = internal global ptr @download_firmware._entry.60, section ".printk_index", align 4
@download_firmware._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.46, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013(stk) :Number of bytes written to uart tx buffer are not matching with requested cmd write size\00", [62 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.65 = internal global ptr @download_firmware._entry.63, section ".printk_index", align 4
@download_firmware.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.46, ptr @.str.2, ptr @.str.66, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(stk) :W\00", [23 x i8] zeroinitializer }, align 32
@download_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.46, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013(stk) :response timeout/signaled during fw download \00", [41 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.70 = internal global ptr @download_firmware._entry.68, section ".printk_index", align 4
@download_firmware._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.46, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016(stk) :sleep command in scr\00", [34 x i8] zeroinitializer }, align 32
@download_firmware._entry_ptr.73 = internal global ptr @download_firmware._entry.71, section ".printk_index", align 4
@read_local_version.read_ver_cmd = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\01\10\00", [28 x i8] zeroinitializer }, align 32
@read_local_version.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.74, ptr @.str.2, ptr @.str.23, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_local_version\00", [45 x i8] zeroinitializer }, align 32
@read_local_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.74, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013(stk) :kim: couldn't write 4 bytes\00", [59 x i8] zeroinitializer }, align 32
@read_local_version._entry_ptr = internal global ptr @read_local_version._entry, section ".printk_index", align 4
@read_local_version._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013(stk) : waiting for ver info- timed out or received signal\00", [35 x i8] zeroinitializer }, align 32
@read_local_version._entry_ptr.78 = internal global ptr @read_local_version._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ti-connectivity/TIInit_%d.%d.%d.bts\00", [60 x i8] zeroinitializer }, align 32
@read_local_version._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016(stk) :%s\00", [20 x i8] zeroinitializer }, align 32
@read_local_version._entry_ptr.82 = internal global ptr @read_local_version._entry.80, section ".printk_index", align 4
@skip_change_remote_baud._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013(stk) :invalid action after change remote baud command\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"skip_change_remote_baud\00", [40 x i8] zeroinitializer }, align 32
@skip_change_remote_baud._entry_ptr = internal global ptr @skip_change_remote_baud._entry, section ".printk_index", align 4
@skip_change_remote_baud._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014(stk) :skipping the wait event of change remote baud\00", [41 x i8] zeroinitializer }, align 32
@skip_change_remote_baud._entry_ptr.87 = internal global ptr @skip_change_remote_baud._entry.85, section ".printk_index", align 4
@st_kim_devices = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kim\00", [28 x i8] zeroinitializer }, align 32
@kim_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013(stk) :no mem to allocate\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kim_probe\00", [22 x i8] zeroinitializer }, align 32
@kim_probe._entry_ptr = internal global ptr @kim_probe._entry, section ".printk_index", align 4
@kim_probe._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013(stk) : ST core init failed\00", [34 x i8] zeroinitializer }, align 32
@kim_probe._entry_ptr.93 = internal global ptr @kim_probe._entry.91, section ".printk_index", align 4
@kim_probe._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stk) : gpio %d request failed \00", [62 x i8] zeroinitializer }, align 32
@kim_probe._entry_ptr.96 = internal global ptr @kim_probe._entry.94, section ".printk_index", align 4
@kim_probe._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013(stk) : unable to configure gpio %d\00", [58 x i8] zeroinitializer }, align 32
@kim_probe._entry_ptr.99 = internal global ptr @kim_probe._entry.97, section ".printk_index", align 4
@uim_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @uim_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kim_probe._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013(stk) :failed to create sysfs entries\00", [56 x i8] zeroinitializer }, align 32
@kim_probe._entry_ptr.102 = internal global ptr @kim_probe._entry.100, section ".printk_index", align 4
@kim_probe._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.90, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016(stk) :sysfs entries created\0A\00", [32 x i8] zeroinitializer }, align 32
@kim_probe._entry_ptr.105 = internal global ptr @kim_probe._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ti-st\00", [26 x i8] zeroinitializer }, align 32
@kim_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@version_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @version_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"protocols\00", [22 x i8] zeroinitializer }, align 32
@list_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@uim_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ldisc_install, ptr @uart_dev_name, ptr @uart_baud_rate, ptr @uart_flow_cntrl, ptr null], [44 x i8] zeroinitializer }, align 32
@ldisc_install = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_install, ptr null }, [36 x i8] zeroinitializer }, align 32
@uart_dev_name = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_dev_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@uart_baud_rate = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_baud_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@uart_flow_cntrl = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_flow_cntrl, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"baud_rate\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flow_cntrl\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%04X %d.%d.%d\0A\00", [17 x i8] zeroinitializer }, align 32
@kim_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016(stk) :nshutdown GPIO Freed\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kim_remove\00", [21 x i8] zeroinitializer }, align 32
@kim_remove._entry_ptr = internal global ptr @kim_remove._entry, section ".printk_index", align 4
@kim_remove._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016(stk) :sysfs entries removed\00", [33 x i8] zeroinitializer }, align 32
@kim_remove._entry_ptr.120 = internal global ptr @kim_remove._entry.118, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 4]
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 464, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 481, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 483, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 492, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 497, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 504, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 542, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 550, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"kim_platform_driver\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 832, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 137, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 141, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 160, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 169, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 181, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 191, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 73, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 74, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 91, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 100, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 291, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 299, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 313, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 319, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 328, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 343, i32 6 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 354, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 382, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 390, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 395, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 403, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [13 x i8] c"read_ver_cmd\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 207, i32 20 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 210, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 214, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 221, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 240, i32 24 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 249, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 262, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 269, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"st_kim_devices\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 28, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 838, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 721, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 728, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 739, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 746, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [13 x i8] c"uim_attr_grp\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 666, i32 37 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 756, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 764, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 766, i32 39 }
@___asan_gen_.413 = private unnamed_addr constant [16 x i8] c"kim_debugfs_dir\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 704, i32 23 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 768, i32 22 }
@___asan_gen_.419 = private unnamed_addr constant [13 x i8] c"version_fops\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 695, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 770, i32 22 }
@___asan_gen_.425 = private unnamed_addr constant [10 x i8] c"list_fops\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 696, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 87, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [10 x i8] c"uim_attrs\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 658, i32 26 }
@___asan_gen_.437 = private unnamed_addr constant [14 x i8] c"ldisc_install\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 638, i32 30 }
@___asan_gen_.440 = private unnamed_addr constant [14 x i8] c"uart_dev_name\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 641, i32 30 }
@___asan_gen_.443 = private unnamed_addr constant [15 x i8] c"uart_baud_rate\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 648, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant [16 x i8] c"uart_flow_cntrl\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 655, i32 30 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 591, i32 22 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 645, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 620, i32 22 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 652, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 656, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 574, i32 16 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 796, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.480 = private constant [31 x i8] c"../drivers/misc/ti-st/st_kim.c\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 800, i32 2 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_kim_platform_driver_exit, ptr @__initcall__kmod_st_drv__281_842_kim_platform_driver_init6, ptr @download_firmware._entry, ptr @download_firmware._entry.47, ptr @download_firmware._entry.54, ptr @download_firmware._entry.57, ptr @download_firmware._entry.60, ptr @download_firmware._entry.63, ptr @download_firmware._entry.68, ptr @download_firmware._entry.71, ptr @download_firmware._entry_ptr, ptr @download_firmware._entry_ptr.49, ptr @download_firmware._entry_ptr.56, ptr @download_firmware._entry_ptr.59, ptr @download_firmware._entry_ptr.62, ptr @download_firmware._entry_ptr.65, ptr @download_firmware._entry_ptr.70, ptr @download_firmware._entry_ptr.73, ptr @kim_check_data_len._entry, ptr @kim_check_data_len._entry_ptr, ptr @kim_int_recv._entry, ptr @kim_int_recv._entry.30, ptr @kim_int_recv._entry.33, ptr @kim_int_recv._entry_ptr, ptr @kim_int_recv._entry_ptr.32, ptr @kim_int_recv._entry_ptr.35, ptr @kim_platform_driver_exit, ptr @kim_probe._entry, ptr @kim_probe._entry.100, ptr @kim_probe._entry.103, ptr @kim_probe._entry.91, ptr @kim_probe._entry.94, ptr @kim_probe._entry.97, ptr @kim_probe._entry_ptr, ptr @kim_probe._entry_ptr.102, ptr @kim_probe._entry_ptr.105, ptr @kim_probe._entry_ptr.93, ptr @kim_probe._entry_ptr.96, ptr @kim_probe._entry_ptr.99, ptr @kim_remove._entry, ptr @kim_remove._entry.118, ptr @kim_remove._entry_ptr, ptr @kim_remove._entry_ptr.120, ptr @read_local_version._entry, ptr @read_local_version._entry.76, ptr @read_local_version._entry.80, ptr @read_local_version._entry_ptr, ptr @read_local_version._entry_ptr.78, ptr @read_local_version._entry_ptr.82, ptr @skip_change_remote_baud._entry, ptr @skip_change_remote_baud._entry.85, ptr @skip_change_remote_baud._entry_ptr, ptr @skip_change_remote_baud._entry_ptr.87, ptr @st_kim_start._entry, ptr @st_kim_start._entry.10, ptr @st_kim_start._entry.13, ptr @st_kim_start._entry.3, ptr @st_kim_start._entry.7, ptr @st_kim_start._entry_ptr, ptr @st_kim_start._entry_ptr.12, ptr @st_kim_start._entry_ptr.15, ptr @st_kim_start._entry_ptr.5, ptr @st_kim_start._entry_ptr.9, ptr @st_kim_stop._entry, ptr @st_kim_stop._entry.18, ptr @st_kim_stop._entry_ptr, ptr @st_kim_stop._entry_ptr.20, ptr @validate_firmware_response._entry, ptr @validate_firmware_response._entry.38, ptr @validate_firmware_response._entry_ptr, ptr @validate_firmware_response._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @kim_platform_driver, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @read_local_version.read_ver_cmd, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @st_kim_devices, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @uim_attr_grp, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @kim_debugfs_dir, ptr @.str.107, ptr @version_fops, ptr @.str.108, ptr @list_fops, ptr @init_completion.__key, ptr @.str.109, ptr @uim_attrs, ptr @ldisc_install, ptr @uart_dev_name, ptr @uart_baud_rate, ptr @uart_flow_cntrl, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_start._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_start._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_start._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_start._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_stop._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_int_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_int_recv._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_int_recv._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_firmware_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_firmware_response._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_check_data_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_local_version.read_ver_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_local_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_local_version._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_local_version._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skip_change_remote_baud._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skip_change_remote_baud._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_kim_devices to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_probe._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_probe._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_probe._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uim_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_probe._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_probe._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uim_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldisc_install to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_dev_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_baud_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_flow_cntrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kim_remove._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_kim_recv(ptr nocapture noundef readonly %disc_data, ptr noundef %data, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kim_data = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 14
  %0 = ptrtoint ptr %kim_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kim_data, align 4
  tail call fastcc void @kim_int_recv(ptr noundef %1, ptr noundef %data, i32 noundef %count)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kim_int_recv(ptr noundef %kim_gdata, ptr noundef readonly %data, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kim_int_recv.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kim_int_recv, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kim_int_recv.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %data, null
  br i1 %cmp, label %do.end12, label %while.cond.preheader, !prof !249

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool16.not147 = icmp eq i32 %count, 0
  br i1 %tobool16.not147, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rx_count = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 8
  %rx_skb = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 9
  %rx_state = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 7
  br label %while.body

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %count.addr.0149 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %ptr.0148 = phi ptr [ %data, %while.body.lr.ph ], [ %ptr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %0 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool17.not = icmp eq i32 %1, 0
  br i1 %tobool17.not, label %while.body.if.end68_crit_edge, label %if.then18

while.body.if.end68_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then18:                                        ; preds = %while.body
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %count.addr.0149)
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skb, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %4, i32 noundef %2) #11
  %5 = call ptr @memcpy(ptr %call.i, ptr %ptr.0148, i32 %2)
  %6 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_count, align 4
  %sub = sub i32 %7, %2
  store i32 %sub, ptr %rx_count, align 4
  %sub24 = sub i32 %count.addr.0149, %2
  %add.ptr = getelementptr i8, ptr %ptr.0148, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %2)
  %tobool26.not = icmp eq i32 %7, %2
  br i1 %tobool26.not, label %if.end28, label %if.then18.while.cond.backedge_crit_edge

if.then18.while.cond.backedge_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end28:                                         ; preds = %if.then18
  %8 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end28.if.end68_crit_edge [
    i32 2, label %do.body29
    i32 1, label %sw.bb47
  ]

if.end28.if.end68_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.body29:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kim_int_recv.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kim_int_recv, %if.then41)) #11
          to label %do.end44 [label %if.then41], !srcloc !248

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kim_int_recv.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.27) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29
  tail call fastcc void @validate_firmware_response(ptr noundef %kim_gdata)
  %11 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_state, align 4
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_skb, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end93, %do.end75, %kim_check_data_len.exit, %do.end44, %if.then18.while.cond.backedge_crit_edge
  %ptr.0.be = phi ptr [ %add.ptr, %if.then18.while.cond.backedge_crit_edge ], [ %incdec.ptr79, %if.end93 ], [ %incdec.ptr, %do.end75 ], [ %add.ptr, %kim_check_data_len.exit ], [ %add.ptr, %do.end44 ]
  %count.addr.0.be = phi i32 [ %sub24, %if.then18.while.cond.backedge_crit_edge ], [ %dec80, %if.end93 ], [ %dec, %do.end75 ], [ %sub24, %kim_check_data_len.exit ], [ %sub24, %do.end44 ]
  %tobool16.not = icmp eq i32 %count.addr.0.be, 0
  br i1 %tobool16.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb47:                                          ; preds = %if.end28
  %13 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_skb, align 4
  %data49 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %data49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data49, align 4
  %arrayidx = getelementptr i8, ptr %16, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kim_int_recv.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kim_int_recv, %if.then62)) #11
          to label %do.end65 [label %if.then62], !srcloc !248

if.then62:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kim_int_recv.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.29, i32 noundef %conv) #11
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %sw.bb47
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv66 = zext i8 %20 to i32
  %21 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %do.end65.skb_tailroom.exit.i_crit_edge

do.end65.skb_tailroom.exit.i_crit_edge:           ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %do.end65.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %do.end65.skb_tailroom.exit.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kim_check_data_len.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kim_int_recv, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !248

if.then.i:                                        ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kim_check_data_len.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.43, i32 noundef %conv66, i32 noundef %cond.i.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @validate_firmware_response(ptr noundef %kim_gdata) #11
  br label %if.end15.i

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv66)
  %cmp.i = icmp slt i32 %cond.i.i, %conv66
  br i1 %cmp.i, label %do.end9.i, label %if.else13.i

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv66, i32 noundef %cond.i.i) #14
  %29 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %30, i32 noundef 0) #11
  br label %if.end15.i

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %rx_state, align 4
  br label %kim_check_data_len.exit

if.end15.i:                                       ; preds = %do.end9.i, %if.then5.i
  %32 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rx_state, align 4
  %33 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rx_skb, align 4
  br label %kim_check_data_len.exit

kim_check_data_len.exit:                          ; preds = %if.end15.i, %if.else13.i
  %.sink.i = phi i32 [ 0, %if.end15.i ], [ %conv66, %if.else13.i ]
  %34 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i, ptr %rx_count, align 4
  br label %while.cond.backedge

if.end68:                                         ; preds = %if.end28.if.end68_crit_edge, %while.body.if.end68_crit_edge
  %ptr.1 = phi ptr [ %add.ptr, %if.end28.if.end68_crit_edge ], [ %ptr.0148, %while.body.if.end68_crit_edge ]
  %count.addr.1 = phi i32 [ %sub24, %if.end28.if.end68_crit_edge ], [ %count.addr.0149, %while.body.if.end68_crit_edge ]
  %35 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cond102 = icmp eq i8 %36, 4
  br i1 %cond102, label %sw.bb70, label %do.end75

sw.bb70:                                          ; preds = %if.end68
  %37 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %rx_state, align 4
  %38 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %rx_count, align 4
  %call.i143 = tail call ptr @__alloc_skb(i32 noundef 1032, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %39 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i143, ptr %rx_skb, align 4
  %tobool84.not = icmp eq ptr %call.i143, null
  br i1 %tobool84.not, label %do.end88, label %if.end93

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #14
  %incdec.ptr = getelementptr i8, ptr %ptr.1, i32 1
  %dec = add i32 %count.addr.1, -1
  br label %while.cond.backedge

do.end88:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  %40 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %rx_state, align 4
  %41 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rx_count, align 4
  br label %cleanup

if.end93:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  %dec80 = add i32 %count.addr.1, -1
  %incdec.ptr79 = getelementptr i8, ptr %ptr.1, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i143, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i143, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %45, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %46 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_skb, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 4, ptr %cb, align 8
  %49 = load ptr, ptr %rx_skb, align 4
  %arrayidx99 = getelementptr %struct.sk_buff, ptr %49, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx99, align 1
  br label %while.cond.backedge

cleanup:                                          ; preds = %do.end88, %while.cond.backedge.cleanup_crit_edge, %do.end12, %while.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_kim_complete(ptr noundef %kim_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ldisc_installed = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 3
  tail call void @complete(ptr noundef %ldisc_installed) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_kim_start(ptr noundef %kim_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %kim_pdev = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 1
  %0 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kim_pdev, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %chip_enable = getelementptr inbounds %struct.ti_st_plat_data, ptr %3, i32 0, i32 6
  %nshutdown = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 6
  %ldisc_installed = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 3
  %ldisc_install = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 12
  br label %do.body1

do.body1:                                         ; preds = %do.cond44.do.body1_crit_edge, %entry
  %retry.0 = phi i32 [ 5, %entry ], [ %dec45, %do.cond44.do.body1_crit_edge ]
  %4 = ptrtoint ptr %chip_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body1.if.end_crit_edge, label %if.then

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 %5(ptr noundef %kim_data) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1.if.end_crit_edge
  %6 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nshutdown, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %7) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #11
  %13 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nshutdown, align 4
  %call.i61 = tail call ptr @gpio_to_desc(i32 noundef %14) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i61, i32 noundef 1) #11
  br label %while.body10

while.body10:                                     ; preds = %while.body10.while.body10_crit_edge, %if.end
  %__ms6.063 = phi i32 [ 100, %if.end ], [ %dec8, %while.body10.while.body10_crit_edge ]
  %dec8 = add nsw i32 %__ms6.063, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #11
  %tobool9.not = icmp eq i32 %dec8, 0
  br i1 %tobool9.not, label %while.end11, label %while.body10.while.body10_crit_edge

while.body10.while.body10_crit_edge:              ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body10

while.end11:                                      ; preds = %while.body10
  %16 = ptrtoint ptr %ldisc_installed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ldisc_installed, align 4
  %17 = ptrtoint ptr %ldisc_install to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ldisc_install, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %18 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kim_pdev, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void @sysfs_notify(ptr noundef %dev18, ptr noundef null, ptr noundef nonnull @.str.6) #11
  %call21 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ldisc_installed, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %while.end11.do.cond44_crit_edge, label %do.end32

while.end11.do.cond44_crit_edge:                  ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond44

do.end32:                                         ; preds = %while.end11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  %call35 = tail call fastcc i32 @download_firmware(ptr noundef %kim_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp.not = icmp eq i32 %call35, 0
  br i1 %cmp.not, label %do.end32.do.end47_crit_edge, label %do.end32.do.cond44_crit_edge

do.end32.do.cond44_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond44

do.end32.do.end47_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.cond44:                                        ; preds = %do.end32.do.cond44_crit_edge, %while.end11.do.cond44_crit_edge
  %.str.14.sink = phi ptr [ @.str.8, %while.end11.do.cond44_crit_edge ], [ @.str.14, %do.end32.do.cond44_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink) #14
  %call42 = tail call i32 @st_kim_stop(ptr noundef %kim_data)
  %dec45 = add nsw i32 %retry.0, -1
  %tobool46.not = icmp eq i32 %retry.0, 0
  br i1 %tobool46.not, label %do.cond44.do.end47_crit_edge, label %do.cond44.do.body1_crit_edge

do.cond44.do.body1_crit_edge:                     ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1

do.cond44.do.end47_crit_edge:                     ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end47:                                         ; preds = %do.cond44.do.end47_crit_edge, %do.end32.do.end47_crit_edge
  %err.1 = phi i32 [ %call42, %do.cond44.do.end47_crit_edge ], [ 0, %do.end32.do.end47_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_kim_stop(ptr noundef %kim_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kim_pdev = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 1
  %0 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kim_pdev, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %core_data = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 10
  %4 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_data, align 4
  %tty1 = getelementptr inbounds %struct.st_data_s, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty1, align 4
  %ldisc_installed = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 3
  %8 = ptrtoint ptr %ldisc_installed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ldisc_installed, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_ldisc_flush(ptr noundef nonnull %7) #11
  tail call void @tty_driver_flush_buffer(ptr noundef nonnull %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  %ldisc_install = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 12
  %9 = ptrtoint ptr %ldisc_install to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ldisc_install, align 4
  %10 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kim_pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void @sysfs_notify(ptr noundef %dev3, ptr noundef null, ptr noundef nonnull @.str.6) #11
  %call6 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ldisc_installed, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end11, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end.if.end14_crit_edge
  %err.0 = phi i32 [ %call6, %do.end.if.end14_crit_edge ], [ -110, %do.end11 ]
  %nshutdown = getelementptr inbounds %struct.kim_data_s, ptr %kim_data, i32 0, i32 6
  %12 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nshutdown, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %13) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #11
  %15 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nshutdown, align 4
  %call.i36 = tail call ptr @gpio_to_desc(i32 noundef %16) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i36, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #11
  %18 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nshutdown, align 4
  %call.i37 = tail call ptr @gpio_to_desc(i32 noundef %19) #11
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i37, i32 noundef 0) #11
  %chip_disable = getelementptr inbounds %struct.ti_st_plat_data, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %chip_disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip_disable, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %if.then18

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 %21(ptr noundef %kim_data) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14.if.end21_crit_edge
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @download_firmware(ptr noundef %kim_gdata) unnamed_addr #0 align 64 {
entry:
  %bts_scr_name = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bts_scr_name) #11
  %0 = call ptr @memset(ptr %bts_scr_name, i32 0, i32 40)
  %call = call fastcc i32 @read_local_version(ptr noundef %kim_gdata, ptr noundef nonnull %bts_scr_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_entry = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 5
  %kim_pdev = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 1
  %1 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kim_pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call3 = call i32 @request_firmware(ptr noundef %fw_entry, ptr noundef nonnull %bts_scr_name, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end.do.end13_crit_edge, !prof !250

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %cmp6 = icmp eq ptr %6, null
  br i1 %cmp6, label %lor.lhs.false.do.end13_crit_edge, label %lor.rhs, !prof !249

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %lor.rhs.do.end13_crit_edge, label %if.end17, !prof !249

lor.rhs.do.end13_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end13:                                         ; preds = %lor.rhs.do.end13_crit_edge, %lor.lhs.false.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call3, ptr noundef nonnull %bts_scr_name) #14
  br label %cleanup

if.end17:                                         ; preds = %lor.rhs
  %add.ptr = getelementptr i8, ptr %6, i32 32
  %sub = add i32 %8, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp22282 = icmp slt i32 %sub, 1
  %tobool23.not283 = icmp eq ptr %add.ptr, null
  %or.cond276284 = select i1 %cmp22282, i1 true, i1 %tobool23.not283
  br i1 %or.cond276284, label %if.end17.while.end208_crit_edge, label %do.body24.lr.ph

if.end17.while.end208_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end208

do.body24.lr.ph:                                  ; preds = %if.end17
  %kim_rcvd154 = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 2
  %core_data = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 10
  br label %do.body24

do.body24:                                        ; preds = %sw.epilog.do.body24_crit_edge, %do.body24.lr.ph
  %ptr.0286 = phi ptr [ %add.ptr, %do.body24.lr.ph ], [ %add.ptr207, %sw.epilog.do.body24_crit_edge ]
  %len.0285 = phi i32 [ %sub, %do.body24.lr.ph ], [ %sub203, %sw.epilog.do.body24_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @download_firmware.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_firmware, %if.then34)) #11
          to label %do.end39 [label %if.then34], !srcloc !248

if.then34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %size35 = getelementptr inbounds %struct.bts_action, ptr %ptr.0286, i32 0, i32 1
  %9 = ptrtoint ptr %size35 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %size35, align 1
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %ptr.0286 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %ptr.0286, align 1
  %conv36 = zext i16 %12 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @download_firmware.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv36) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body24
  %13 = ptrtoint ptr %ptr.0286 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %ptr.0286, align 1
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %14, label %do.end39.sw.epilog_crit_edge [
    i16 1, label %do.body42
    i16 2, label %do.body138
    i16 4, label %do.end172
  ]

do.end39.sw.epilog_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body42:                                        ; preds = %do.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @download_firmware.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_firmware, %if.then54)) #11
          to label %do.end57 [label %if.then54], !srcloc !248

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @download_firmware.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.53) #11
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %do.body42
  %data58 = getelementptr %struct.bts_action, ptr %ptr.0286, i32 0, i32 2
  %opcode = getelementptr inbounds %struct.hci_command, ptr %data58, i32 0, i32 1
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -202, i16 %17)
  %cmp60 = icmp eq i16 %17, -202
  br i1 %cmp60, label %do.end71, label %if.end74, !prof !249

do.end71:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #14
  %size.i = getelementptr inbounds %struct.bts_action, ptr %ptr.0286, i32 0, i32 1
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %size.i, align 1
  %conv.i = zext i16 %19 to i32
  %add.ptr1.i = getelementptr i8, ptr %data58, i32 %conv.i
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 2
  %add.neg.i = add nsw i32 %len.0285, -4
  %sub.i = sub nsw i32 %add.neg.i, %conv.i
  %len.1 = select i1 %cmp.not.i, i32 %sub.i, i32 %len.0285
  %ptr.1 = select i1 %cmp.not.i, ptr %add.ptr1.i, ptr %ptr.0286
  %.str.86.sink.i = select i1 %cmp.not.i, ptr @.str.86, ptr @.str.83
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.86.sink.i) #14
  br label %sw.epilog

if.end74:                                         ; preds = %do.end57
  %size75 = getelementptr inbounds %struct.bts_action, ptr %ptr.0286, i32 0, i32 1
  %22 = ptrtoint ptr %size75 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %size75, align 1
  %conv76 = zext i16 %23 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 500
  br label %do.body78

do.body78:                                        ; preds = %land.rhs93.do.body78_crit_edge, %if.end74
  %25 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core_data, align 4
  %call79 = call i32 @st_get_uart_wr_room(ptr noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.end89

do.end85:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #14
  %27 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %28) #11
  br label %cleanup

if.end89:                                         ; preds = %do.body78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call79, i32 %conv76)
  %cmp91 = icmp slt i32 %call79, %conv76
  br i1 %cmp91, label %land.rhs93, label %if.end89.do.end98_crit_edge

if.end89.do.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98

land.rhs93:                                       ; preds = %if.end89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub94 = sub i32 %30, %add
  %cmp95 = icmp slt i32 %sub94, 0
  br i1 %cmp95, label %land.rhs93.do.body78_crit_edge, label %land.rhs93.do.end98_crit_edge

land.rhs93.do.end98_crit_edge:                    ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98

land.rhs93.do.body78_crit_edge:                   ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78

do.end98:                                         ; preds = %land.rhs93.do.end98_crit_edge, %if.end89.do.end98_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub99 = sub i32 %31, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub99)
  %cmp100 = icmp sgt i32 %sub99, -1
  br i1 %cmp100, label %do.end105, label %if.end109

do.end105:                                        ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #14
  %32 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %33) #11
  br label %cleanup

if.end109:                                        ; preds = %do.end98
  %34 = ptrtoint ptr %kim_rcvd154 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %kim_rcvd154, align 4
  %35 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core_data, align 4
  %37 = ptrtoint ptr %size75 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %size75, align 1
  %conv114 = zext i16 %38 to i32
  %call115 = call i32 @st_int_write(ptr noundef %36, ptr noundef %data58, i32 noundef %conv114) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then124, label %if.end126, !prof !249

if.then124:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %40) #11
  br label %cleanup

if.end126:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_cmp4(i32 %call115, i32 %conv76)
  %cmp127.not = icmp eq i32 %call115, %conv76
  br i1 %cmp127.not, label %if.end126.sw.epilog_crit_edge, label %do.end132

if.end126.sw.epilog_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end132:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #14
  %41 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %42) #11
  br label %cleanup

do.body138:                                       ; preds = %do.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @download_firmware.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_firmware, %if.then150)) #11
          to label %do.end153 [label %if.then150], !srcloc !248

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @download_firmware.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.67) #11
  br label %do.end153

do.end153:                                        ; preds = %if.then150, %do.body138
  %call156 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %kim_rcvd154, i32 noundef 80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 1
  br i1 %cmp157, label %do.end162, label %if.end167

do.end162:                                        ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #13
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #14
  %43 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool166.not = icmp eq i32 %call156, 0
  %cond = select i1 %tobool166.not, i32 -110, i32 -512
  br label %cleanup

if.end167:                                        ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %kim_rcvd154 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %kim_rcvd154, align 4
  br label %sw.epilog

do.end172:                                        ; preds = %do.end39
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #14
  %data175 = getelementptr inbounds %struct.bts_action, ptr %ptr.0286, i32 0, i32 2
  %46 = ptrtoint ptr %data175 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %data175, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool197.not280 = icmp eq i32 %47, 0
  br i1 %tobool197.not280, label %do.end172.sw.epilog_crit_edge, label %do.end172.while.body198_crit_edge

do.end172.while.body198_crit_edge:                ; preds = %do.end172
  br label %while.body198

do.end172.sw.epilog_crit_edge:                    ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body198:                                    ; preds = %while.body198.while.body198_crit_edge, %do.end172.while.body198_crit_edge
  %__ms.0281 = phi i32 [ %dec, %while.body198.while.body198_crit_edge ], [ %47, %do.end172.while.body198_crit_edge ]
  %dec = add i32 %__ms.0281, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #11
  %tobool197.not = icmp eq i32 %dec, 0
  br i1 %tobool197.not, label %while.body198.sw.epilog_crit_edge, label %while.body198.while.body198_crit_edge

while.body198.while.body198_crit_edge:            ; preds = %while.body198
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body198

while.body198.sw.epilog_crit_edge:                ; preds = %while.body198
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body198.sw.epilog_crit_edge, %do.end172.sw.epilog_crit_edge, %if.end167, %if.end126.sw.epilog_crit_edge, %do.end71, %do.end39.sw.epilog_crit_edge
  %len.2 = phi i32 [ %len.0285, %do.end39.sw.epilog_crit_edge ], [ %len.0285, %if.end167 ], [ %len.1, %do.end71 ], [ %len.0285, %if.end126.sw.epilog_crit_edge ], [ %len.0285, %do.end172.sw.epilog_crit_edge ], [ %len.0285, %while.body198.sw.epilog_crit_edge ]
  %ptr.2 = phi ptr [ %ptr.0286, %do.end39.sw.epilog_crit_edge ], [ %ptr.0286, %if.end167 ], [ %ptr.1, %do.end71 ], [ %ptr.0286, %if.end126.sw.epilog_crit_edge ], [ %ptr.0286, %do.end172.sw.epilog_crit_edge ], [ %ptr.0286, %while.body198.sw.epilog_crit_edge ]
  %size200 = getelementptr inbounds %struct.bts_action, ptr %ptr.2, i32 0, i32 1
  %49 = ptrtoint ptr %size200 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %size200, align 1
  %conv201 = zext i16 %50 to i32
  %add202.neg = add i32 %len.2, -4
  %sub203 = sub i32 %add202.neg, %conv201
  %add.ptr204 = getelementptr i8, ptr %ptr.2, i32 4
  %add.ptr207 = getelementptr i8, ptr %add.ptr204, i32 %conv201
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub203)
  %cmp22 = icmp slt i32 %sub203, 1
  %tobool23.not = icmp eq ptr %add.ptr207, null
  %or.cond276 = select i1 %cmp22, i1 true, i1 %tobool23.not
  br i1 %or.cond276, label %sw.epilog.while.end208_crit_edge, label %sw.epilog.do.body24_crit_edge

sw.epilog.do.body24_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

sw.epilog.while.end208_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end208

while.end208:                                     ; preds = %sw.epilog.while.end208_crit_edge, %if.end17.while.end208_crit_edge
  %51 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %52) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end208, %do.end162, %do.end132, %if.then124, %do.end105, %do.end85, %do.end13, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end13 ], [ %cond, %do.end162 ], [ %call79, %do.end85 ], [ -110, %do.end105 ], [ %call115, %if.then124 ], [ -5, %do.end132 ], [ 0, %while.end208 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bts_scr_name) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @st_kim_ref(ptr nocapture noundef writeonly %core_data, i32 noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [3 x ptr], ptr @st_kim_devices, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %core_data5 = getelementptr inbounds %struct.kim_data_s, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %core_data5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_data5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %storemerge = phi ptr [ %5, %if.end4 ], [ null, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  %6 = ptrtoint ptr %core_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge, ptr %core_data, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kim_platform_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kim_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kim_platform_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @kim_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @validate_firmware_response(ptr noundef %kim_gdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_skb = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 9
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr i8, ptr %3, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5 = icmp eq i8 %7, 1
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp11 = icmp eq i8 %9, 16
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %arrayidx15 = getelementptr i8, ptr %3, i32 5
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp17 = icmp eq i8 %11, 0
  br i1 %cmp17, label %if.then19, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  %resp_buffer = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memcpy(ptr %resp_buffer, ptr %3, i32 %13)
  %rx_state = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 7
  %15 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_state, align 4
  %16 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rx_skb, align 4
  %rx_count = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 8
  %17 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rx_count, align 4
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %arrayidx25 = getelementptr i8, ptr %3, i32 5
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp27.not = icmp eq i8 %19, 0
  br i1 %cmp27.not, label %if.else.if.end41_crit_edge, label %do.end, !prof !250

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %arrayidx37 = getelementptr i8, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %23 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv38) #14
  br label %cleanup.sink.split

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.then19
  %kim_rcvd = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 2
  tail call void @complete_all(ptr noundef %kim_rcvd) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41, %do.end
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_local_version(ptr noundef %kim_gdata, ptr noundef %bts_scr_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_local_version.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_local_version, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_local_version.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.74) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kim_rcvd = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 2
  %0 = ptrtoint ptr %kim_rcvd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %kim_rcvd, align 4
  %core_data = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 10
  %1 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core_data, align 4
  %call3 = tail call i32 @st_int_write(ptr noundef %2, ptr noundef nonnull @read_local_version.read_ver_cmd, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 4
  br i1 %cmp.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #14
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call13 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %kim_rcvd, i32 noundef 80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool21.not = icmp eq i32 %call13, 0
  %cond = select i1 %tobool21.not, i32 -110, i32 -512
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %kim_rcvd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %kim_rcvd, align 4
  %arrayidx = getelementptr %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 4, i32 12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %5 to i16
  %arrayidx25 = getelementptr %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx25, align 1
  %conv27 = zext i8 %7 to i16
  %shl = shl nuw i16 %conv27, 8
  %or = or i16 %shl, %conv
  %and = lshr i16 %conv27, 2
  %8 = and i16 %and, 31
  %and32 = and i16 %conv, 127
  %and35 = lshr i16 %or, 7
  %9 = and i16 %and35, 7
  %10 = or i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %shl)
  %tobool40.not87 = icmp slt i16 %shl, 0
  %spec.select = select i1 %tobool40.not87, i16 %10, i16 %9
  %conv46 = zext i16 %8 to i32
  %conv47 = zext i16 %spec.select to i32
  %conv48 = zext i16 %and32 to i32
  %call49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bts_scr_name, ptr noundef nonnull @.str.79, i32 noundef %conv46, i32 noundef %conv47, i32 noundef %conv48)
  %version50 = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 11
  %11 = ptrtoint ptr %version50 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or, ptr %version50, align 4
  %chip52 = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %chip52 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %8, ptr %chip52, align 2
  %maj_ver54 = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 11, i32 3
  %13 = ptrtoint ptr %maj_ver54 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %spec.select, ptr %maj_ver54, align 2
  %min_ver56 = getelementptr inbounds %struct.kim_data_s, ptr %kim_gdata, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %min_ver56 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %and32, ptr %min_ver56, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %bts_scr_name) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end18, %do.end7
  %retval.0 = phi i32 [ -5, %do.end7 ], [ %cond, %do.end18 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_get_uart_wr_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_int_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kim_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp ne i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2 = icmp slt i32 %3, 3
  %or.cond = and i1 %cmp.not, %cmp2
  %arrayidx = getelementptr [3 x ptr], ptr @st_kim_devices, i32 0, i32 %3
  %st_kim_devices.sink = select i1 %or.cond, ptr %arrayidx, ptr @st_kim_devices
  %4 = ptrtoint ptr %st_kim_devices.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %st_kim_devices.sink, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 228) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %core_data = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 10
  %call7 = tail call i32 @st_core_init(ptr noundef %core_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #14
  br label %err_core_init

if.end15:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_data, align 4
  %kim_data = getelementptr inbounds %struct.st_data_s, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %kim_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %kim_data, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %nshutdown = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %nshutdown to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nshutdown, align 4
  %call18 = tail call i32 @gpio_request(i32 noundef %11, ptr noundef nonnull @.str.88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %13 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nshutdown, align 4
  br i1 %tobool19.not, label %if.end29, label %do.end25, !prof !250

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %14) #14
  br label %err_sysfs_group

if.end29:                                         ; preds = %if.end15
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %14) #11
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool32.not = icmp eq i32 %call1.i, 0
  br i1 %tobool32.not, label %if.end46, label %do.end42, !prof !250

do.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %nshutdown to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nshutdown, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %16) #14
  br label %err_sysfs_group

if.end46:                                         ; preds = %if.end29
  %kim_pdev = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdev, ptr %kim_pdev, align 4
  %kim_rcvd = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %kim_rcvd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %kim_rcvd, align 8
  %wait.i = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @init_completion.__key) #11
  %ldisc_installed = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %ldisc_installed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ldisc_installed, align 8
  %wait.i107 = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i107, ptr noundef nonnull @.str.109, ptr noundef nonnull @init_completion.__key) #11
  %call48 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @uim_attr_grp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #14
  br label %err_sysfs_group

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %dev_name = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 13
  %dev_name57 = getelementptr inbounds %struct.ti_st_plat_data, ptr %1, i32 0, i32 1
  %call59 = tail call ptr @strncpy(ptr noundef %dev_name, ptr noundef %dev_name57, i32 noundef 32)
  %flow_cntrl = getelementptr inbounds %struct.ti_st_plat_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %flow_cntrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_cntrl, align 4
  %flow_cntrl60 = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 14
  %22 = ptrtoint ptr %flow_cntrl60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flow_cntrl60, align 4
  %baud_rate = getelementptr inbounds %struct.ti_st_plat_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %baud_rate, align 4
  %baud_rate61 = getelementptr inbounds %struct.kim_data_s, ptr %call7.i.i, i32 0, i32 15
  %25 = ptrtoint ptr %baud_rate61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %baud_rate61, align 8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #14
  %call67 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.106, ptr noundef null) #11
  store ptr %call67, ptr @kim_debugfs_dir, align 4
  %call68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.107, i16 noundef zeroext 292, ptr noundef %call67, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @version_fops) #11
  %26 = load ptr, ptr @kim_debugfs_dir, align 4
  %call69 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.108, i16 noundef zeroext 292, ptr noundef %26, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @list_fops) #11
  br label %cleanup

err_sysfs_group:                                  ; preds = %do.end53, %do.end42, %do.end25
  %err.0 = phi i32 [ %call18, %do.end25 ], [ %call1.i, %do.end42 ], [ %call48, %do.end53 ]
  %27 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core_data, align 4
  tail call void @st_core_exit(ptr noundef %28) #11
  br label %err_core_init

err_core_init:                                    ; preds = %err_sysfs_group, %do.end12
  %err.1 = phi i32 [ -5, %do.end12 ], [ %err.0, %err_sysfs_group ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_core_init, %if.end56, %do.end
  %retval.0 = phi i32 [ %err.1, %err_core_init ], [ 0, %if.end56 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kim_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @gpio_free(i32 noundef %5) #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #14
  %6 = load ptr, ptr @kim_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %6) #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @uim_attr_grp) #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #14
  %kim_pdev = getelementptr inbounds %struct.kim_data_s, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %kim_pdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %kim_pdev, align 4
  %core_data = getelementptr inbounds %struct.kim_data_s, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_data, align 4
  tail call void @st_core_exit(ptr noundef %9) #11
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kim_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %suspend = getelementptr inbounds %struct.ti_st_plat_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %pdev, [1 x i32] %state.coerce) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kim_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %resume = getelementptr inbounds %struct.ti_st_plat_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_core_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_core_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_install(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ldisc_install = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ldisc_install to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ldisc_install, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.110, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_dev_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_name = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 13
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.112, ptr noundef %dev_name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_baud_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %baud_rate = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %baud_rate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.110, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_flow_cntrl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flow_cntrl = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flow_cntrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_cntrl, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.110, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @version_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %version = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %version, align 4
  %conv = zext i16 %3 to i32
  %chip = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip, align 2
  %conv2 = zext i16 %5 to i32
  %maj_ver = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %maj_ver to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %maj_ver, align 2
  %conv4 = zext i16 %7 to i32
  %min_ver = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %min_ver to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %min_ver, align 4
  %conv6 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.115, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @list_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %core_data = getelementptr inbounds %struct.kim_data_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %core_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_data, align 4
  tail call void @kim_st_list_protocols(ptr noundef %3, ptr noundef %s) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kim_st_list_protocols(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !195, !197, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !233, !234, !235, !237, !238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/ti-st/st_kim.c", i32 464, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @st_kim_start._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @st_kim_start._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/ti-st/st_kim.c", i32 481, i32 3}
!8 = !{ptr @st_kim_start._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @st_kim_start._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/ti-st/st_kim.c", i32 483, i32 11}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/ti-st/st_kim.c", i32 492, i32 4}
!14 = !{ptr @st_kim_start._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @st_kim_start._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/ti-st/st_kim.c", i32 497, i32 4}
!18 = !{ptr @st_kim_start._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @st_kim_start._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/ti-st/st_kim.c", i32 504, i32 5}
!22 = !{ptr @st_kim_start._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @st_kim_start._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/ti-st/st_kim.c", i32 542, i32 2}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @st_kim_stop._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @st_kim_stop._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/ti-st/st_kim.c", i32 550, i32 3}
!31 = !{ptr @st_kim_stop._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @st_kim_stop._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__initcall__kmod_st_drv__281_842_kim_platform_driver_init6, !34, !"__initcall__kmod_st_drv__281_842_kim_platform_driver_init6", i1 false, i1 false}
!34 = !{!"../drivers/misc/ti-st/st_kim.c", i32 842, i32 1}
!35 = !{ptr @__exitcall_kim_platform_driver_exit, !34, !"__exitcall_kim_platform_driver_exit", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_author282, !37, !"__UNIQUE_ID_author282", i1 false, i1 false}
!37 = !{!"../drivers/misc/ti-st/st_kim.c", i32 844, i32 1}
!38 = !{ptr @__UNIQUE_ID_description283, !39, !"__UNIQUE_ID_description283", i1 false, i1 false}
!39 = !{!"../drivers/misc/ti-st/st_kim.c", i32 845, i32 1}
!40 = !{ptr @__UNIQUE_ID_file284, !41, !"__UNIQUE_ID_file284", i1 false, i1 false}
!41 = !{!"../drivers/misc/ti-st/st_kim.c", i32 846, i32 1}
!42 = !{ptr @__UNIQUE_ID_license285, !41, !"__UNIQUE_ID_license285", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/ti-st/st_kim.c", i32 137, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @kim_int_recv.__UNIQUE_ID_ddebug272, !44, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!48 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/ti-st/st_kim.c", i32 141, i32 3}
!51 = !{ptr @kim_int_recv._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @kim_int_recv._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/ti-st/st_kim.c", i32 160, i32 5}
!55 = !{ptr @kim_int_recv.__UNIQUE_ID_ddebug275, !54, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!56 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/ti-st/st_kim.c", i32 169, i32 5}
!59 = !{ptr @kim_int_recv.__UNIQUE_ID_ddebug276, !58, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!60 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/ti-st/st_kim.c", i32 181, i32 4}
!63 = !{ptr @kim_int_recv._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @kim_int_recv._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/ti-st/st_kim.c", i32 191, i32 4}
!67 = !{ptr @kim_int_recv._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @kim_int_recv._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/ti-st/st_kim.c", i32 73, i32 3}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @validate_firmware_response._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @validate_firmware_response._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/ti-st/st_kim.c", i32 74, i32 3}
!76 = !{ptr @validate_firmware_response._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @validate_firmware_response._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/ti-st/st_kim.c", i32 91, i32 2}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @kim_check_data_len.__UNIQUE_ID_ddebug271, !79, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!82 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/misc/ti-st/st_kim.c", i32 100, i32 3}
!85 = !{ptr @kim_check_data_len._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @kim_check_data_len._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/misc/ti-st/st_kim.c", i32 291, i32 3}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @download_firmware._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @download_firmware._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/ti-st/st_kim.c", i32 299, i32 3}
!94 = !{ptr @download_firmware._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @download_firmware._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/ti-st/st_kim.c", i32 313, i32 3}
!98 = !{ptr @download_firmware.__UNIQUE_ID_ddebug278, !97, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!99 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/ti-st/st_kim.c", i32 319, i32 4}
!102 = !{ptr @download_firmware.__UNIQUE_ID_ddebug279, !101, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!103 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/ti-st/st_kim.c", i32 328, i32 5}
!106 = !{ptr @download_firmware._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @download_firmware._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/ti-st/st_kim.c", i32 343, i32 6}
!110 = !{ptr @download_firmware._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @download_firmware._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/ti-st/st_kim.c", i32 354, i32 5}
!114 = !{ptr @download_firmware._entry.60, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @download_firmware._entry_ptr.62, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/ti-st/st_kim.c", i32 382, i32 5}
!118 = !{ptr @download_firmware._entry.63, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @download_firmware._entry_ptr.65, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/ti-st/st_kim.c", i32 390, i32 4}
!122 = !{ptr @download_firmware.__UNIQUE_ID_ddebug280, !121, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!123 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/misc/ti-st/st_kim.c", i32 395, i32 5}
!126 = !{ptr @download_firmware._entry.68, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @download_firmware._entry_ptr.70, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/misc/ti-st/st_kim.c", i32 403, i32 4}
!130 = !{ptr @download_firmware._entry.71, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @download_firmware._entry_ptr.73, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @read_local_version.read_ver_cmd, !133, !"read_ver_cmd", i1 false, i1 false}
!133 = !{!"../drivers/misc/ti-st/st_kim.c", i32 207, i32 20}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/ti-st/st_kim.c", i32 210, i32 2}
!136 = !{ptr @read_local_version.__UNIQUE_ID_ddebug277, !135, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/ti-st/st_kim.c", i32 214, i32 3}
!139 = !{ptr @read_local_version._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @read_local_version._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/misc/ti-st/st_kim.c", i32 221, i32 3}
!143 = !{ptr @read_local_version._entry.76, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @read_local_version._entry_ptr.78, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/misc/ti-st/st_kim.c", i32 240, i32 24}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/misc/ti-st/st_kim.c", i32 249, i32 2}
!149 = !{ptr @read_local_version._entry.80, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @read_local_version._entry_ptr.82, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/misc/ti-st/st_kim.c", i32 262, i32 3}
!153 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @skip_change_remote_baud._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @skip_change_remote_baud._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/misc/ti-st/st_kim.c", i32 269, i32 3}
!158 = !{ptr @skip_change_remote_baud._entry.85, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @skip_change_remote_baud._entry_ptr.87, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @st_kim_devices, !161, !"st_kim_devices", i1 false, i1 false}
!161 = !{!"../drivers/misc/ti-st/st_kim.c", i32 28, i32 32}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/misc/ti-st/st_kim.c", i32 838, i32 11}
!164 = !{ptr @kim_platform_driver, !165, !"kim_platform_driver", i1 false, i1 false}
!165 = !{!"../drivers/misc/ti-st/st_kim.c", i32 832, i32 31}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/misc/ti-st/st_kim.c", i32 721, i32 3}
!168 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @kim_probe._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @kim_probe._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.92, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/ti-st/st_kim.c", i32 728, i32 3}
!173 = !{ptr @kim_probe._entry.91, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @kim_probe._entry_ptr.93, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/misc/ti-st/st_kim.c", i32 739, i32 3}
!177 = !{ptr @kim_probe._entry.94, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @kim_probe._entry_ptr.96, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/misc/ti-st/st_kim.c", i32 746, i32 3}
!181 = !{ptr @kim_probe._entry.97, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @kim_probe._entry_ptr.99, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/misc/ti-st/st_kim.c", i32 756, i32 3}
!185 = !{ptr @kim_probe._entry.100, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @kim_probe._entry_ptr.102, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/misc/ti-st/st_kim.c", i32 764, i32 2}
!189 = !{ptr @kim_probe._entry.103, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @kim_probe._entry_ptr.105, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/misc/ti-st/st_kim.c", i32 766, i32 39}
!193 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/misc/ti-st/st_kim.c", i32 768, i32 22}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/misc/ti-st/st_kim.c", i32 770, i32 22}
!197 = !{ptr @init_completion.__key, !198, !"__key", i1 false, i1 false}
!198 = !{!"../include/linux/completion.h", i32 87, i32 2}
!199 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @uim_attr_grp, !201, !"uim_attr_grp", i1 false, i1 false}
!201 = !{!"../drivers/misc/ti-st/st_kim.c", i32 666, i32 37}
!202 = !{ptr @uim_attrs, !203, !"uim_attrs", i1 false, i1 false}
!203 = !{!"../drivers/misc/ti-st/st_kim.c", i32 658, i32 26}
!204 = !{ptr @ldisc_install, !205, !"ldisc_install", i1 false, i1 false}
!205 = !{!"../drivers/misc/ti-st/st_kim.c", i32 638, i32 30}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/misc/ti-st/st_kim.c", i32 591, i32 22}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/misc/ti-st/st_kim.c", i32 645, i32 1}
!210 = !{ptr @uart_dev_name, !211, !"uart_dev_name", i1 false, i1 false}
!211 = !{!"../drivers/misc/ti-st/st_kim.c", i32 641, i32 30}
!212 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/misc/ti-st/st_kim.c", i32 620, i32 22}
!214 = !{ptr @.str.113, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/misc/ti-st/st_kim.c", i32 652, i32 1}
!216 = !{ptr @uart_baud_rate, !217, !"uart_baud_rate", i1 false, i1 false}
!217 = !{!"../drivers/misc/ti-st/st_kim.c", i32 648, i32 30}
!218 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/misc/ti-st/st_kim.c", i32 656, i32 1}
!220 = !{ptr @uart_flow_cntrl, !221, !"uart_flow_cntrl", i1 false, i1 false}
!221 = !{!"../drivers/misc/ti-st/st_kim.c", i32 655, i32 30}
!222 = !{ptr @kim_debugfs_dir, !223, !"kim_debugfs_dir", i1 false, i1 false}
!223 = !{!"../drivers/misc/ti-st/st_kim.c", i32 704, i32 23}
!224 = !{ptr @version_fops, !225, !"version_fops", i1 false, i1 false}
!225 = !{!"../drivers/misc/ti-st/st_kim.c", i32 695, i32 1}
!226 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/misc/ti-st/st_kim.c", i32 574, i32 16}
!228 = !{ptr @list_fops, !229, !"list_fops", i1 false, i1 false}
!229 = !{!"../drivers/misc/ti-st/st_kim.c", i32 696, i32 1}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/misc/ti-st/st_kim.c", i32 796, i32 2}
!232 = !{ptr @.str.117, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @kim_remove._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @kim_remove._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/misc/ti-st/st_kim.c", i32 800, i32 2}
!237 = !{ptr @kim_remove._entry.118, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @kim_remove._entry_ptr.120, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i64 2148311822, i64 2148311827, i64 2148311840, i64 2148311884, i64 2148311918, i64 2148311939}
!249 = !{!"branch_weights", i32 1, i32 2000}
!250 = !{!"branch_weights", i32 2000, i32 1}
