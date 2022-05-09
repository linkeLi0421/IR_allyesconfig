; ModuleID = '/llk/IR_all_yes/drivers/parport/probe.c_pt.bc'
source_filename = "../drivers/parport/probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.69 = type { ptr, ptr }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device ID probe\00", [16 x i8] zeroinitializer }, align 32
@parport_read_device_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: reported broken Device ID length of %#zX bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"parport_read_device_id\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/parport/probe.c\00", [40 x i8] zeroinitializer }, align 32
@parport_read_device_id._entry_ptr = internal global ptr @parport_read_device_id._entry, section ".printk_index", align 4
@parport_read_device_id._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: Device ID was %zd bytes while device told it would be %d bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@parport_read_device_id._entry_ptr.6 = internal global ptr @parport_read_device_id._entry.4, section ".printk_index", align 4
@parport_read_device_id._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\017%s: Device ID reading stopped before device told data not available. Current idlen %u of %u, len bytes %02X %02X\0A\00", [44 x i8] zeroinitializer }, align 32
@parport_read_device_id._entry_ptr.9 = internal global ptr @parport_read_device_id._entry.7, section ".printk_index", align 4
@parse_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s probe: memory squeeze\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parse_data\00", [21 x i8] zeroinitializer }, align 32
@parse_data._entry_ptr = internal global ptr @parse_data._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MFG\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MANUFACTURER\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MDL\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MODEL\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CLS\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLASS\00", [26 x i8] zeroinitializer }, align 32
@classes = internal constant { [15 x %struct.anon.69], [40 x i8] } { [15 x %struct.anon.69] [%struct.anon.69 { ptr @.str.27, ptr @.str.28 }, %struct.anon.69 { ptr @.str.29, ptr @.str.30 }, %struct.anon.69 { ptr @.str.31, ptr @.str.32 }, %struct.anon.69 { ptr @.str.33, ptr @.str.34 }, %struct.anon.69 { ptr @.str.35, ptr @.str.36 }, %struct.anon.69 { ptr @.str.37, ptr @.str.37 }, %struct.anon.69 { ptr @.str.38, ptr @.str.39 }, %struct.anon.69 { ptr @.str.40, ptr @.str.41 }, %struct.anon.69 { ptr @.str.42, ptr @.str.43 }, %struct.anon.69 { ptr @.str.44, ptr @.str.45 }, %struct.anon.69 { ptr @.str.46, ptr @.str.47 }, %struct.anon.69 { ptr @.str.27, ptr @.str.48 }, %struct.anon.69 { ptr @.str.27, ptr @.str.49 }, %struct.anon.69 { ptr @.str.50, ptr @.str.51 }, %struct.anon.69 zeroinitializer], [40 x i8] zeroinitializer }, align 32
@parse_data._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s probe: warning, class '%s' not understood\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_data._entry_ptr.20 = internal global ptr @parse_data._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMMAND SET\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PJL\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCL\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DES\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESCRIPTION\00", [20 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Legacy device\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PRINTER\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Printer\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MODEM\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Modem\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NET\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Network device\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDC\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hard disk\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MEDIA\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Multimedia device\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FDC\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Floppy disk\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTS\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ports\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SCANNER\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Scanner\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIGICAM\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital camera\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unknown device\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unspecified\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SCSIADAPTER\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SCSI adapter\00", [19 x i8] zeroinitializer }, align 32
@pretty_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pretty_print\00", [19 x i8] zeroinitializer }, align 32
@pretty_print._entry_ptr = internal global ptr @pretty_print._entry, section ".printk_index", align 4
@pretty_print._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c (addr %d)\00", [19 x i8] zeroinitializer }, align 32
@pretty_print._entry_ptr.56 = internal global ptr @pretty_print._entry.54, section ".printk_index", align 4
@pretty_print._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c: %s\00", [25 x i8] zeroinitializer }, align 32
@pretty_print._entry_ptr.59 = internal global ptr @pretty_print._entry.57, section ".printk_index", align 4
@pretty_print._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c, %s %s\00", [22 x i8] zeroinitializer }, align 32
@pretty_print._entry_ptr.62 = internal global ptr @pretty_print._entry.60, section ".printk_index", align 4
@pretty_print._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pretty_print._entry_ptr.65 = internal global ptr @pretty_print._entry.63, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 251, i32 47 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 176, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 199, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 210, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 61, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 78, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 78, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 81, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 81, i32 47 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 84, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 84, i32 47 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 19, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 96, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 99, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 100, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 105, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 105, i32 43 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 107, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 107, i32 47 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 20, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 20, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 21, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 21, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 22, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 22, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 23, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 23, i32 19 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 24, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 24, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 25, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 29, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 29, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 30, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 30, i32 19 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 31, i32 19 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 32, i32 19 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 33, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 33, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 41, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 44, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 46, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 48, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [27 x i8] c"../drivers/parport/probe.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 50, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @parport_read_device_id._entry, ptr @parport_read_device_id._entry.4, ptr @parport_read_device_id._entry.7, ptr @parport_read_device_id._entry_ptr, ptr @parport_read_device_id._entry_ptr.6, ptr @parport_read_device_id._entry_ptr.9, ptr @parse_data._entry, ptr @parse_data._entry.18, ptr @parse_data._entry_ptr, ptr @parse_data._entry_ptr.20, ptr @pretty_print._entry, ptr @pretty_print._entry.54, ptr @pretty_print._entry.57, ptr @pretty_print._entry.60, ptr @pretty_print._entry.63, ptr @pretty_print._entry_ptr, ptr @pretty_print._entry_ptr.56, ptr @pretty_print._entry_ptr.59, ptr @pretty_print._entry_ptr.62, ptr @pretty_print._entry_ptr.65, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @classes, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_read_device_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_read_device_id._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_read_device_id._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_data._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretty_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretty_print._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretty_print._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretty_print._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretty_print._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_device_id(i32 noundef %devnum, ptr noundef %buffer, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %length.i = alloca [2 x i8], align 2
  %idlens.i = alloca [4 x i32], align 4
  %tmp124.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @parport_open(i32 noundef %devnum, ptr noundef nonnull @.str) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @parport_claim_or_block(ptr noundef nonnull %call) #8
  %port = getelementptr inbounds %struct.pardevice, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %call3 = tail call i32 @parport_negotiate(ptr noundef %1, i32 noundef 256) #8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %call5 = tail call i32 @parport_negotiate(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length.i) #8
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %length.i, align 2, !annotation !131
  %7 = getelementptr inbounds [2 x i8], ptr %length.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !131
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idlens.i) #8
  %9 = getelementptr inbounds [4 x i32], ptr %idlens.i, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %idlens.i, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -1, ptr %10, align 4
  %call.i = call i32 @parport_read(ptr noundef %5, ptr noundef nonnull %length.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then7.parport_read_device_id.exit.thread_crit_edge, label %if.end.i

if.then7.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.parport_read_device_id.exit.thread_crit_edge

if.end.i.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp5.i = icmp ult i32 %count, 2
  br i1 %cmp5.i, label %if.end4.i.parport_read_device_id.exit.thread_crit_edge, label %if.end7.i

if.end4.i.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length.i, align 2
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %buffer, align 1
  %add.i = zext i16 %13 to i32
  %rev.i = call i16 @llvm.bswap.i16(i16 %13) #8
  %add16.i = zext i16 %rev.i to i32
  %15 = call i32 @llvm.umin.i32(i32 %add.i, i32 %add16.i) #8
  %16 = ptrtoint ptr %idlens.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %idlens.i, align 4
  %add21.i = add nuw nsw i32 %15, 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add21.i, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %rev.i)
  %cmp23.not.i = icmp eq i16 %13, %rev.i
  br i1 %cmp23.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp27.inv.i = icmp ugt i32 %15, 2
  %spec.store.select.i = select i1 %cmp27.inv.i, i32 2, i32 0
  %18 = call i32 @llvm.umax.i32(i32 %add.i, i32 %add16.i) #8
  %arrayidx38.i = getelementptr [4 x i32], ptr %idlens.i, i32 0, i32 %spec.store.select.i
  %19 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx38.i, align 4
  %add40.i = add nuw nsw i32 %18, 2
  %add41.i = or i32 %spec.store.select.i, 1
  %arrayidx42.i = getelementptr [4 x i32], ptr %idlens.i, i32 0, i32 %add41.i
  %20 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add40.i, ptr %arrayidx42.i, align 4
  %add43.i = add nuw nsw i32 %spec.store.select.i, 2
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end7.i
  %21 = add nsw i32 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %21)
  %22 = icmp ult i32 %21, -4095
  br i1 %22, label %do.end.i, label %if.else.i.if.end55.i_crit_edge

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 4
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %24, i32 noundef %15) #11
  br label %parport_read_device_id.exit.thread

if.end55.i:                                       ; preds = %if.else.i.if.end55.i_crit_edge, %if.then25.i
  %numidlens.0.i = phi i32 [ %add43.i, %if.then25.i ], [ 2, %if.else.i.if.end55.i_crit_edge ]
  %physport.i = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 11
  %25 = ptrtoint ptr %idlens.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idlens.i, align 4
  %add59.i62 = add i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i62, i32 %count)
  %cmp60.not.i63 = icmp ult i32 %add59.i62, %count
  br i1 %cmp60.not.i63, label %if.end63.i, label %if.end55.i.if.then103.i_crit_edge

if.end55.i.if.then103.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

if.end63.i.1:                                     ; preds = %for.inc.i
  %add.ptr.i.1 = getelementptr i8, ptr %buffer, i32 %add69.i
  %sub.i.1 = sub i32 %66, %add69.i
  %call64.i.1 = call i32 @parport_read(ptr noundef %5, ptr noundef %add.ptr.i.1, i32 noundef %sub.i.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.1)
  %cmp65.i.1 = icmp slt i32 %call64.i.1, 0
  br i1 %cmp65.i.1, label %if.end63.i.1.parport_read_device_id.exit.thread_crit_edge, label %if.end68.i.1

if.end63.i.1.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.end63.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end68.i.1:                                     ; preds = %if.end63.i.1
  %add69.i.1 = add i32 %call64.i.1, %add69.i
  %27 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %physport.i, align 8
  %phase.i.1 = getelementptr inbounds %struct.parport, ptr %28, i32 0, i32 23, i32 1
  %29 = ptrtoint ptr %phase.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %phase.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp70.not.i.1 = icmp eq i32 %30, 6
  br i1 %cmp70.not.i.1, label %if.end83.i.1, label %if.end68.i.1.if.then72.i_crit_edge

if.end68.i.1.if.then72.i_crit_edge:               ; preds = %if.end68.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

if.end83.i.1:                                     ; preds = %if.end68.i.1
  %sub84.i.1 = add i32 %add69.i.1, -1
  %arrayidx85.i.1 = getelementptr i8, ptr %buffer, i32 %sub84.i.1
  %31 = ptrtoint ptr %arrayidx85.i.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx85.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %32)
  %cmp87.i.1 = icmp eq i8 %32, 59
  br i1 %cmp87.i.1, label %if.end83.i.1.do.end92.i_crit_edge, label %for.inc.i.1

if.end83.i.1.do.end92.i_crit_edge:                ; preds = %if.end83.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.i

for.inc.i.1:                                      ; preds = %if.end83.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %numidlens.0.i)
  %exitcond.not.i.1 = icmp eq i32 %numidlens.0.i, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.parport_read_device_id.exit_crit_edge, label %for.body.i.1

for.inc.i.1.parport_read_device_id.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit

for.body.i.1:                                     ; preds = %for.inc.i.1
  %arrayidx58.i.1 = getelementptr inbounds [4 x i32], ptr %idlens.i, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx58.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx58.i.1, align 4
  %add59.i.1 = add i32 %34, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i.1, i32 %count)
  %cmp60.not.i.1 = icmp ult i32 %add59.i.1, %count
  br i1 %cmp60.not.i.1, label %if.end63.i.2, label %for.body.i.1.if.then103.i_crit_edge

for.body.i.1.if.then103.i_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

if.end63.i.2:                                     ; preds = %for.body.i.1
  %add.ptr.i.2 = getelementptr i8, ptr %buffer, i32 %add69.i.1
  %sub.i.2 = sub i32 %34, %add69.i.1
  %call64.i.2 = call i32 @parport_read(ptr noundef %5, ptr noundef %add.ptr.i.2, i32 noundef %sub.i.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.2)
  %cmp65.i.2 = icmp slt i32 %call64.i.2, 0
  br i1 %cmp65.i.2, label %if.end63.i.2.parport_read_device_id.exit.thread_crit_edge, label %if.end68.i.2

if.end63.i.2.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.end63.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end68.i.2:                                     ; preds = %if.end63.i.2
  %add69.i.2 = add i32 %call64.i.2, %add69.i.1
  %35 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %physport.i, align 8
  %phase.i.2 = getelementptr inbounds %struct.parport, ptr %36, i32 0, i32 23, i32 1
  %37 = ptrtoint ptr %phase.i.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %phase.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp70.not.i.2 = icmp eq i32 %38, 6
  br i1 %cmp70.not.i.2, label %if.end83.i.2, label %if.end68.i.2.if.then72.i_crit_edge

if.end68.i.2.if.then72.i_crit_edge:               ; preds = %if.end68.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

if.end83.i.2:                                     ; preds = %if.end68.i.2
  %sub84.i.2 = add i32 %add69.i.2, -1
  %arrayidx85.i.2 = getelementptr i8, ptr %buffer, i32 %sub84.i.2
  %39 = ptrtoint ptr %arrayidx85.i.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx85.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %40)
  %cmp87.i.2 = icmp eq i8 %40, 59
  br i1 %cmp87.i.2, label %if.end83.i.2.do.end92.i_crit_edge, label %for.body.i.2

if.end83.i.2.do.end92.i_crit_edge:                ; preds = %if.end83.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.i

for.body.i.2:                                     ; preds = %if.end83.i.2
  %arrayidx58.i.2 = getelementptr inbounds [4 x i32], ptr %idlens.i, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx58.i.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx58.i.2, align 4
  %add59.i.2 = add i32 %42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i.2, i32 %count)
  %cmp60.not.i.2 = icmp ult i32 %add59.i.2, %count
  br i1 %cmp60.not.i.2, label %if.end63.i.3, label %for.body.i.2.if.then103.i_crit_edge

for.body.i.2.if.then103.i_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

if.end63.i.3:                                     ; preds = %for.body.i.2
  %add.ptr.i.3 = getelementptr i8, ptr %buffer, i32 %add69.i.2
  %sub.i.3 = sub i32 %42, %add69.i.2
  %call64.i.3 = call i32 @parport_read(ptr noundef %5, ptr noundef %add.ptr.i.3, i32 noundef %sub.i.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.3)
  %cmp65.i.3 = icmp slt i32 %call64.i.3, 0
  br i1 %cmp65.i.3, label %if.end63.i.3.parport_read_device_id.exit.thread_crit_edge, label %if.end68.i.3

if.end63.i.3.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.end63.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end68.i.3:                                     ; preds = %if.end63.i.3
  %add69.i.3 = add i32 %call64.i.3, %add69.i.2
  %43 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %physport.i, align 8
  %phase.i.3 = getelementptr inbounds %struct.parport, ptr %44, i32 0, i32 23, i32 1
  %45 = ptrtoint ptr %phase.i.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %phase.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp70.not.i.3 = icmp eq i32 %46, 6
  br i1 %cmp70.not.i.3, label %if.end83.i.3, label %if.end68.i.3.if.then72.i_crit_edge

if.end68.i.3.if.then72.i_crit_edge:               ; preds = %if.end68.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

if.end83.i.3:                                     ; preds = %if.end68.i.3
  %sub84.i.3 = add i32 %add69.i.3, -1
  %arrayidx85.i.3 = getelementptr i8, ptr %buffer, i32 %sub84.i.3
  %47 = ptrtoint ptr %arrayidx85.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx85.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %48)
  %cmp87.i.3 = icmp eq i8 %48, 59
  br i1 %cmp87.i.3, label %if.end83.i.3.do.end92.i_crit_edge, label %for.inc.i.3

if.end83.i.3.do.end92.i_crit_edge:                ; preds = %if.end83.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.i

for.inc.i.3:                                      ; preds = %if.end83.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %numidlens.0.i)
  %exitcond.not.i.3 = icmp eq i32 %numidlens.0.i, 4
  br i1 %exitcond.not.i.3, label %for.inc.i.3.parport_read_device_id.exit_crit_edge, label %for.body.i.3

for.inc.i.3.parport_read_device_id.exit_crit_edge: ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit

for.body.i.3:                                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx58.i.3 = getelementptr inbounds [4 x i32], ptr %idlens.i, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx58.i.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx58.i.3, align 4
  br label %if.then103.i

if.end63.i:                                       ; preds = %if.end55.i
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 2
  %sub.i = add i32 %26, -2
  %call64.i = call i32 @parport_read(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %if.end63.i.parport_read_device_id.exit.thread_crit_edge, label %if.end68.i

if.end63.i.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end68.i:                                       ; preds = %if.end63.i
  %add69.i = add i32 %call64.i, 2
  %51 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %physport.i, align 8
  %phase.i = getelementptr inbounds %struct.parport, ptr %52, i32 0, i32 23, i32 1
  %53 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %phase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %54)
  %cmp70.not.i = icmp eq i32 %54, 6
  br i1 %cmp70.not.i, label %if.end83.i, label %if.end68.i.if.then72.i_crit_edge

if.end68.i.if.then72.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

if.then72.i:                                      ; preds = %if.end68.i.if.then72.i_crit_edge, %if.end68.i.3.if.then72.i_crit_edge, %if.end68.i.2.if.then72.i_crit_edge, %if.end68.i.1.if.then72.i_crit_edge
  %add69.i.lcssa = phi i32 [ %add69.i, %if.end68.i.if.then72.i_crit_edge ], [ %add69.i.1, %if.end68.i.1.if.then72.i_crit_edge ], [ %add69.i.2, %if.end68.i.2.if.then72.i_crit_edge ], [ %add69.i.3, %if.end68.i.3.if.then72.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add69.i.lcssa, i32 %add.i)
  %cmp73.not.i = icmp eq i32 %add69.i.lcssa, %add.i
  br i1 %cmp73.not.i, label %if.then72.i.parport_read_device_id.exit_crit_edge, label %do.end78.i

if.then72.i.parport_read_device_id.exit_crit_edge: ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit

do.end78.i:                                       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  %name80.i = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 3
  %55 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name80.i, align 4
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %56, i32 noundef %add69.i.lcssa, i32 noundef %add.i) #11
  br label %parport_read_device_id.exit

if.end83.i:                                       ; preds = %if.end68.i
  %sub84.i = add i32 %call64.i, 1
  %arrayidx85.i = getelementptr i8, ptr %buffer, i32 %sub84.i
  %57 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx85.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %58)
  %cmp87.i = icmp eq i8 %58, 59
  br i1 %cmp87.i, label %if.end83.i.do.end92.i_crit_edge, label %for.inc.i

if.end83.i.do.end92.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.i

do.end92.i:                                       ; preds = %if.end83.i.do.end92.i_crit_edge, %if.end83.i.3.do.end92.i_crit_edge, %if.end83.i.2.do.end92.i_crit_edge, %if.end83.i.1.do.end92.i_crit_edge
  %add69.i.lcssa120 = phi i32 [ %add69.i, %if.end83.i.do.end92.i_crit_edge ], [ %add69.i.1, %if.end83.i.1.do.end92.i_crit_edge ], [ %add69.i.2, %if.end83.i.2.do.end92.i_crit_edge ], [ %add69.i.3, %if.end83.i.3.do.end92.i_crit_edge ]
  %current_idlen.0273.i64.lcssa117 = phi i32 [ 0, %if.end83.i.do.end92.i_crit_edge ], [ 1, %if.end83.i.1.do.end92.i_crit_edge ], [ 2, %if.end83.i.2.do.end92.i_crit_edge ], [ 3, %if.end83.i.3.do.end92.i_crit_edge ]
  %name94.i = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 3
  %59 = ptrtoint ptr %name94.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name94.i, align 4
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %length.i, align 2
  %conv96.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %7, align 1
  %conv98.i = zext i8 %64 to i32
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %60, i32 noundef %current_idlen.0273.i64.lcssa117, i32 noundef %numidlens.0.i, i32 noundef %conv96.i, i32 noundef %conv98.i) #11
  br label %parport_read_device_id.exit

for.inc.i:                                        ; preds = %if.end83.i
  %arrayidx58.i = getelementptr inbounds [4 x i32], ptr %idlens.i, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx58.i, align 4
  %add59.i = add i32 %66, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i, i32 %count)
  %cmp60.not.i = icmp ult i32 %add59.i, %count
  br i1 %cmp60.not.i, label %if.end63.i.1, label %for.inc.i.if.then103.i_crit_edge

for.inc.i.if.then103.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

if.then103.i:                                     ; preds = %for.inc.i.if.then103.i_crit_edge, %for.body.i.3, %for.body.i.2.if.then103.i_crit_edge, %for.body.i.1.if.then103.i_crit_edge, %if.end55.i.if.then103.i_crit_edge
  %retval1.0272.i.lcssa = phi i32 [ 2, %if.end55.i.if.then103.i_crit_edge ], [ %call64.i, %for.inc.i.if.then103.i_crit_edge ], [ %call64.i.1, %for.body.i.1.if.then103.i_crit_edge ], [ %call64.i.2, %for.body.i.2.if.then103.i_crit_edge ], [ %call64.i.3, %for.body.i.3 ]
  %len.0271.i.lcssa = phi i32 [ 2, %if.end55.i.if.then103.i_crit_edge ], [ %add69.i, %for.inc.i.if.then103.i_crit_edge ], [ %add69.i.1, %for.body.i.1.if.then103.i_crit_edge ], [ %add69.i.2, %for.body.i.2.if.then103.i_crit_edge ], [ %add69.i.3, %for.body.i.3 ]
  %.lcssa = phi i32 [ %26, %if.end55.i.if.then103.i_crit_edge ], [ %66, %for.inc.i.if.then103.i_crit_edge ], [ %34, %for.body.i.1.if.then103.i_crit_edge ], [ %42, %for.body.i.2.if.then103.i_crit_edge ], [ %50, %for.body.i.3 ]
  %add105.i = add i32 %len.0271.i.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add105.i, i32 %count)
  %cmp106.i = icmp ult i32 %add105.i, %count
  br i1 %cmp106.i, label %if.then108.i, label %if.then103.i.if.end118.i_crit_edge

if.then103.i.if.end118.i_crit_edge:               ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then108.i:                                     ; preds = %if.then103.i
  %add.ptr109.i = getelementptr i8, ptr %buffer, i32 %len.0271.i.lcssa
  %67 = xor i32 %len.0271.i.lcssa, -1
  %sub111.i = add i32 %67, %count
  %call112.i = call i32 @parport_read(ptr noundef %5, ptr noundef %add.ptr109.i, i32 noundef %sub111.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %cmp113.i = icmp slt i32 %call112.i, 0
  br i1 %cmp113.i, label %if.then108.i.parport_read_device_id.exit.thread_crit_edge, label %if.end116.i

if.then108.i.parport_read_device_id.exit.thread_crit_edge: ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

if.end116.i:                                      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  %add117.i = add i32 %call112.i, %len.0271.i.lcssa
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.end116.i, %if.then103.i.if.end118.i_crit_edge
  %len.3.i = phi i32 [ %add117.i, %if.end116.i ], [ %len.0271.i.lcssa, %if.then103.i.if.end118.i_crit_edge ]
  %retval1.3.i = phi i32 [ %call112.i, %if.end116.i ], [ %retval1.0272.i.lcssa, %if.then103.i.if.end118.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end118.i
  %retval1.4.i = phi i32 [ %retval1.3.i, %if.end118.i ], [ %call134.i, %while.body.i.while.cond.i_crit_edge ]
  %len2.0.i = phi i32 [ %len.3.i, %if.end118.i ], [ %add139.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %len2.0.i)
  %cmp120.i = icmp ugt i32 %.lcssa, %len2.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.4.i)
  %cmp122.i = icmp ne i32 %retval1.4.i, 0
  %or.cond227.i = select i1 %cmp120.i, i1 %cmp122.i, i1 false
  br i1 %or.cond227.i, label %while.body.i, label %while.cond.i.parport_read_device_id.exit_crit_edge

while.cond.i.parport_read_device_id.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp124.i) #8
  %sub126.i = sub i32 %.lcssa, %len2.0.i
  %68 = call i32 @llvm.umin.i32(i32 %sub126.i, i32 4) #8
  %69 = ptrtoint ptr %tmp124.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %tmp124.i, align 4
  %call134.i = call i32 @parport_read(ptr noundef %5, ptr noundef nonnull %tmp124.i, i32 noundef %68) #8
  %cmp135.i = icmp slt i32 %call134.i, 0
  %add139.i = add i32 %call134.i, %len2.0.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp124.i) #8
  br i1 %cmp135.i, label %while.body.i.parport_read_device_id.exit.thread_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.parport_read_device_id.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_read_device_id.exit.thread

parport_read_device_id.exit.thread:               ; preds = %while.body.i.parport_read_device_id.exit.thread_crit_edge, %if.then108.i.parport_read_device_id.exit.thread_crit_edge, %if.end63.i.parport_read_device_id.exit.thread_crit_edge, %if.end63.i.3.parport_read_device_id.exit.thread_crit_edge, %if.end63.i.2.parport_read_device_id.exit.thread_crit_edge, %if.end63.i.1.parport_read_device_id.exit.thread_crit_edge, %do.end.i, %if.end4.i.parport_read_device_id.exit.thread_crit_edge, %if.end.i.parport_read_device_id.exit.thread_crit_edge, %if.then7.parport_read_device_id.exit.thread_crit_edge
  %retval.6.i.ph = phi i32 [ %call112.i, %if.then108.i.parport_read_device_id.exit.thread_crit_edge ], [ 0, %if.end4.i.parport_read_device_id.exit.thread_crit_edge ], [ -5, %if.end.i.parport_read_device_id.exit.thread_crit_edge ], [ %call.i, %if.then7.parport_read_device_id.exit.thread_crit_edge ], [ -5, %do.end.i ], [ %call134.i, %while.body.i.parport_read_device_id.exit.thread_crit_edge ], [ %call64.i, %if.end63.i.parport_read_device_id.exit.thread_crit_edge ], [ %call64.i.1, %if.end63.i.1.parport_read_device_id.exit.thread_crit_edge ], [ %call64.i.2, %if.end63.i.2.parport_read_device_id.exit.thread_crit_edge ], [ %call64.i.3, %if.end63.i.3.parport_read_device_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idlens.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length.i) #8
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port, align 4
  %call1137 = call i32 @parport_negotiate(ptr noundef %71, i32 noundef 256) #8
  br label %if.end15

parport_read_device_id.exit:                      ; preds = %while.cond.i.parport_read_device_id.exit_crit_edge, %do.end92.i, %do.end78.i, %if.then72.i.parport_read_device_id.exit_crit_edge, %for.inc.i.3.parport_read_device_id.exit_crit_edge, %for.inc.i.1.parport_read_device_id.exit_crit_edge
  %len.5.i = phi i32 [ %add69.i.lcssa120, %do.end92.i ], [ %add69.i.lcssa, %do.end78.i ], [ %add.i, %if.then72.i.parport_read_device_id.exit_crit_edge ], [ %len.3.i, %while.cond.i.parport_read_device_id.exit_crit_edge ], [ %add69.i.1, %for.inc.i.1.parport_read_device_id.exit_crit_edge ], [ %add69.i.3, %for.inc.i.3.parport_read_device_id.exit_crit_edge ]
  %arrayidx148.i = getelementptr i8, ptr %buffer, i32 %len.5.i
  %72 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx148.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idlens.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length.i) #8
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port, align 4
  %call11 = call i32 @parport_negotiate(ptr noundef %74, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.5.i)
  %cmp = icmp sgt i32 %len.5.i, 2
  br i1 %cmp, label %if.then12, label %parport_read_device_id.exit.if.end15_crit_edge

parport_read_device_id.exit.if.end15_crit_edge:   ; preds = %parport_read_device_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %parport_read_device_id.exit
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %port, align 4
  %daisy = getelementptr inbounds %struct.pardevice, ptr %call, i32 0, i32 2
  %77 = ptrtoint ptr %daisy to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %daisy, align 8
  %add.ptr = getelementptr i8, ptr %buffer, i32 2
  %call.i29 = call i32 @strlen(ptr noundef %add.ptr) #12
  %add.i30 = add i32 %call.i29, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i30, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end.i32, label %while.body.lr.ph.i

do.end.i32:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %name.i31 = getelementptr inbounds %struct.parport, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %name.i31 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name.i31, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %80) #11
  br label %if.end15

while.body.lr.ph.i:                               ; preds = %if.then12
  %add2190.i = add i32 %78, 1
  %arrayidx191.i = getelementptr %struct.parport, ptr %76, i32 0, i32 22, i32 %add2190.i
  %call4.i = call ptr @strcpy(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr) #12
  %description.i = getelementptr %struct.parport, ptr %76, i32 0, i32 22, i32 %add2190.i, i32 5
  %cmdset.i = getelementptr %struct.parport, ptr %76, i32 0, i32 22, i32 %add2190.i, i32 4
  %class_name.i = getelementptr %struct.parport, ptr %76, i32 0, i32 22, i32 %add2190.i, i32 1
  %name56.i = getelementptr inbounds %struct.parport, ptr %76, i32 0, i32 3
  %model.i = getelementptr %struct.parport, ptr %76, i32 0, i32 22, i32 %add2190.i, i32 3
  %mfr.i = getelementptr %struct.parport, ptr %76, i32 0, i32 22, i32 %add2190.i, i32 2
  br label %while.body.i33

while.body.i33:                                   ; preds = %rock_on.i.while.body.i33_crit_edge, %while.body.lr.ph.i
  %p.0202.i = phi ptr [ %call9.i.i, %while.body.lr.ph.i ], [ %add.ptr95.i, %rock_on.i.while.body.i33_crit_edge ]
  %guessed_class.0199.i = phi i32 [ 12, %while.body.lr.ph.i ], [ %guessed_class.3.i, %rock_on.i.while.body.i33_crit_edge ]
  %call6.i = call ptr @strchr(ptr noundef nonnull %p.0202.i, i32 noundef 59) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %while.body.i33.if.end9.i_crit_edge, label %if.then8.i

while.body.i33.if.end9.i_crit_edge:               ; preds = %while.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %while.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %call6.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %call6.i, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %while.body.i33.if.end9.i_crit_edge
  %call10.i = call ptr @strchr(ptr noundef nonnull %p.0202.i, i32 noundef 58) #8
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.rock_on.i_crit_edge, label %if.then12.i

if.end9.i.rock_on.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rock_on.i

if.then12.i:                                      ; preds = %if.end9.i
  %incdec.ptr.i = getelementptr i8, ptr %call10.i, i32 1
  %82 = ptrtoint ptr %call10.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %call10.i, align 1
  %call13.i = call i32 @strlen(ptr noundef %incdec.ptr.i) #12
  %u.0194.i = getelementptr i8, ptr %call10.i, i32 %call13.i
  %cmp.not195.i = icmp ult ptr %u.0194.i, %p.0202.i
  br i1 %cmp.not195.i, label %if.then12.i.do.body.i.i.preheader_crit_edge, label %if.then12.i.land.rhs.i_crit_edge

if.then12.i.land.rhs.i_crit_edge:                 ; preds = %if.then12.i
  br label %land.rhs.i

if.then12.i.do.body.i.i.preheader_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

land.rhs.i:                                       ; preds = %while.body18.i.land.rhs.i_crit_edge, %if.then12.i.land.rhs.i_crit_edge
  %u.0196.i = phi ptr [ %u.0.i, %while.body18.i.land.rhs.i_crit_edge ], [ %u.0194.i, %if.then12.i.land.rhs.i_crit_edge ]
  %83 = ptrtoint ptr %u.0196.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %u.0196.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %84)
  %cmp16.i = icmp eq i8 %84, 32
  br i1 %cmp16.i, label %while.body18.i, label %land.rhs.i.do.body.i.i.preheader_crit_edge

land.rhs.i.do.body.i.i.preheader_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

while.body18.i:                                   ; preds = %land.rhs.i
  %85 = ptrtoint ptr %u.0196.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %u.0196.i, align 1
  %u.0.i = getelementptr i8, ptr %u.0196.i, i32 -1
  %cmp.not.i = icmp ult ptr %u.0.i, %p.0202.i
  br i1 %cmp.not.i, label %while.body18.i.do.body.i.i.preheader_crit_edge, label %while.body18.i.land.rhs.i_crit_edge

while.body18.i.land.rhs.i_crit_edge:              ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body18.i.do.body.i.i.preheader_crit_edge:   ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %while.body18.i.do.body.i.i.preheader_crit_edge, %land.rhs.i.do.body.i.i.preheader_crit_edge, %if.then12.i.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %dst.addr.0.i.i = phi ptr [ %incdec.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %p.0202.i, %do.body.i.i.preheader ]
  %86 = ptrtoint ptr %dst.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dst.addr.0.i.i, align 1
  %conv.i.i.i = zext i8 %87 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i.i, align 1
  %90 = and i8 %89, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp.not.i.i.i = icmp eq i8 %90, 0
  %sub.i.i.i = add i8 %87, -32
  %spec.select.i.i170.i = select i1 %cmp.not.i.i.i, i8 %87, i8 %sub.i.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %dst.addr.0.i.i, i32 1
  %91 = ptrtoint ptr %dst.addr.0.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.select.i.i170.i, ptr %dst.addr.0.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %spec.select.i.i170.i, 0
  br i1 %tobool.not.i.i, label %string_upper.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

string_upper.exit.i:                              ; preds = %do.body.i.i
  %call20.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(4) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %string_upper.exit.i.if.then24.i_crit_edge, label %lor.lhs.false.i

string_upper.exit.i.if.then24.i_crit_edge:        ; preds = %string_upper.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %string_upper.exit.i
  %call22.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(13) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %if.else.i34

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %string_upper.exit.i.if.then24.i_crit_edge
  %92 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mfr.i, align 4
  call void @kfree(ptr noundef %93) #8
  %call25.i = call noalias ptr @kstrdup(ptr noundef %incdec.ptr.i, i32 noundef 3264) #8
  %94 = ptrtoint ptr %mfr.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call25.i, ptr %mfr.i, align 4
  br label %rock_on.i

if.else.i34:                                      ; preds = %lor.lhs.false.i
  %call27.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(4) @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.else.i34.if.then32.i_crit_edge, label %lor.lhs.false29.i

if.else.i34.if.then32.i_crit_edge:                ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

lor.lhs.false29.i:                                ; preds = %if.else.i34
  %call30.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(6) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %lor.lhs.false29.i.if.then32.i_crit_edge, label %if.else35.i

lor.lhs.false29.i.if.then32.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false29.i.if.then32.i_crit_edge, %if.else.i34.if.then32.i_crit_edge
  %95 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %model.i, align 4
  call void @kfree(ptr noundef %96) #8
  %call33.i = call noalias ptr @kstrdup(ptr noundef %incdec.ptr.i, i32 noundef 3264) #8
  %97 = ptrtoint ptr %model.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call33.i, ptr %model.i, align 4
  br label %rock_on.i

if.else35.i:                                      ; preds = %lor.lhs.false29.i
  %call36.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(4) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.then41.i_crit_edge, label %lor.lhs.false38.i

if.else35.i.if.then41.i_crit_edge:                ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

lor.lhs.false38.i:                                ; preds = %if.else35.i
  %call39.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(6) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %lor.lhs.false38.i.if.then41.i_crit_edge, label %if.else59.i

lor.lhs.false38.i.if.then41.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

if.then41.i:                                      ; preds = %lor.lhs.false38.i.if.then41.i_crit_edge, %if.else35.i.if.then41.i_crit_edge
  %98 = ptrtoint ptr %class_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %class_name.i, align 4
  call void @kfree(ptr noundef %99) #8
  %call42.i = call noalias ptr @kstrdup(ptr noundef %incdec.ptr.i, i32 noundef 3264) #8
  %100 = ptrtoint ptr %class_name.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call42.i, ptr %class_name.i, align 4
  br label %do.body.i181.i

do.body.i181.i:                                   ; preds = %do.body.i181.i.do.body.i181.i_crit_edge, %if.then41.i
  %dst.addr.0.i171.i = phi ptr [ %incdec.ptr.i, %if.then41.i ], [ %incdec.ptr.i178.i, %do.body.i181.i.do.body.i181.i_crit_edge ]
  %101 = ptrtoint ptr %dst.addr.0.i171.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %dst.addr.0.i171.i, align 1
  %conv.i.i173.i = zext i8 %102 to i32
  %arrayidx.i.i174.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i173.i
  %103 = ptrtoint ptr %arrayidx.i.i174.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i.i174.i, align 1
  %105 = and i8 %104, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp.not.i.i175.i = icmp eq i8 %105, 0
  %sub.i.i176.i = add i8 %102, -32
  %spec.select.i.i177.i = select i1 %cmp.not.i.i175.i, i8 %102, i8 %sub.i.i176.i
  %incdec.ptr.i178.i = getelementptr i8, ptr %dst.addr.0.i171.i, i32 1
  %106 = ptrtoint ptr %dst.addr.0.i171.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %spec.select.i.i177.i, ptr %dst.addr.0.i171.i, align 1
  %tobool.not.i180.i = icmp eq i8 %spec.select.i.i177.i, 0
  br i1 %tobool.not.i180.i, label %for.body.preheader.i, label %do.body.i181.i.do.body.i181.i_crit_edge

do.body.i181.i.do.body.i181.i_crit_edge:          ; preds = %do.body.i181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i181.i

for.body.preheader.i:                             ; preds = %do.body.i181.i
  %107 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %strcmpload.i = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i)
  %tobool49.not.i = icmp eq i8 %strcmpload.i, 0
  br i1 %tobool49.not.i, label %for.body.preheader.i.cleanup89.critedge.i_crit_edge, label %for.inc.i35

for.body.preheader.i.cleanup89.critedge.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.i35:                                      ; preds = %for.body.preheader.i
  %call48.1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.29, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1.i)
  %tobool49.not.1.i = icmp eq i32 %call48.1.i, 0
  br i1 %tobool49.not.1.i, label %for.inc.i35.cleanup89.critedge.i_crit_edge, label %for.inc.1.i

for.inc.i35.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.1.i:                                      ; preds = %for.inc.i35
  %call48.2.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.31, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.2.i)
  %tobool49.not.2.i = icmp eq i32 %call48.2.i, 0
  br i1 %tobool49.not.2.i, label %for.inc.1.i.cleanup89.critedge.i_crit_edge, label %for.inc.2.i

for.inc.1.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call48.3.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.33, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.3.i)
  %tobool49.not.3.i = icmp eq i32 %call48.3.i, 0
  br i1 %tobool49.not.3.i, label %for.inc.2.i.cleanup89.critedge.i_crit_edge, label %for.inc.3.i

for.inc.2.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call48.4.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.35, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.4.i)
  %tobool49.not.4.i = icmp eq i32 %call48.4.i, 0
  br i1 %tobool49.not.4.i, label %for.inc.3.i.cleanup89.critedge.i_crit_edge, label %for.inc.4.i

for.inc.3.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call48.5.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.37, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.5.i)
  %tobool49.not.5.i = icmp eq i32 %call48.5.i, 0
  br i1 %tobool49.not.5.i, label %for.inc.4.i.cleanup89.critedge.i_crit_edge, label %for.inc.5.i

for.inc.4.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call48.6.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.38, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.6.i)
  %tobool49.not.6.i = icmp eq i32 %call48.6.i, 0
  br i1 %tobool49.not.6.i, label %for.inc.5.i.cleanup89.critedge.i_crit_edge, label %for.inc.6.i

for.inc.5.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call48.7.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.40, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.7.i)
  %tobool49.not.7.i = icmp eq i32 %call48.7.i, 0
  br i1 %tobool49.not.7.i, label %for.inc.6.i.cleanup89.critedge.i_crit_edge, label %for.inc.7.i

for.inc.6.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call48.8.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.42, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.8.i)
  %tobool49.not.8.i = icmp eq i32 %call48.8.i, 0
  br i1 %tobool49.not.8.i, label %for.inc.7.i.cleanup89.critedge.i_crit_edge, label %for.inc.8.i

for.inc.7.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %call48.9.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.44, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.9.i)
  %tobool49.not.9.i = icmp eq i32 %call48.9.i, 0
  br i1 %tobool49.not.9.i, label %for.inc.8.i.cleanup89.critedge.i_crit_edge, label %for.inc.9.i

for.inc.8.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %call48.10.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.46, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.10.i)
  %tobool49.not.10.i = icmp eq i32 %call48.10.i, 0
  br i1 %tobool49.not.10.i, label %for.inc.9.i.cleanup89.critedge.i_crit_edge, label %for.inc.12.i

for.inc.9.i.cleanup89.critedge.i_crit_edge:       ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.12.i:                                     ; preds = %for.inc.9.i
  %call48.13.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.50, ptr noundef %incdec.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.13.i)
  %tobool49.not.13.i = icmp eq i32 %call48.13.i, 0
  br i1 %tobool49.not.13.i, label %for.inc.12.i.cleanup89.critedge.i_crit_edge, label %for.inc.13.i

for.inc.12.i.cleanup89.critedge.i_crit_edge:      ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup89.critedge.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %name56.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name56.i, align 4
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %109, ptr noundef %incdec.ptr.i) #11
  %110 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 11, ptr %arrayidx191.i, align 4
  br label %rock_on.i

if.else59.i:                                      ; preds = %lor.lhs.false38.i
  %call60.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(4) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.else59.i.if.then65.i_crit_edge, label %lor.lhs.false62.i

if.else59.i.if.then65.i_crit_edge:                ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65.i

lor.lhs.false62.i:                                ; preds = %if.else59.i
  %call63.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(12) @.str.22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %lor.lhs.false62.i.if.then65.i_crit_edge, label %if.else75.i

lor.lhs.false62.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false62.i.if.then65.i_crit_edge, %if.else59.i.if.then65.i_crit_edge
  %111 = ptrtoint ptr %cmdset.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cmdset.i, align 4
  call void @kfree(ptr noundef %112) #8
  %call66.i = call noalias ptr @kstrdup(ptr noundef %incdec.ptr.i, i32 noundef 3264) #8
  %113 = ptrtoint ptr %cmdset.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call66.i, ptr %cmdset.i, align 4
  %call68.i = call ptr @strstr(ptr noundef %incdec.ptr.i, ptr noundef nonnull @.str.23) #8
  %tobool69.not.i = icmp eq ptr %call68.i, null
  br i1 %tobool69.not.i, label %lor.lhs.false70.i, label %if.then65.i.if.then73.i_crit_edge

if.then65.i.if.then73.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

lor.lhs.false70.i:                                ; preds = %if.then65.i
  %call71.i = call ptr @strstr(ptr noundef %incdec.ptr.i, ptr noundef nonnull @.str.24) #8
  %tobool72.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool72.not.i, label %lor.lhs.false70.i.rock_on.i_crit_edge, label %lor.lhs.false70.i.if.then73.i_crit_edge

lor.lhs.false70.i.if.then73.i_crit_edge:          ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

lor.lhs.false70.i.rock_on.i_crit_edge:            ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rock_on.i

if.then73.i:                                      ; preds = %lor.lhs.false70.i.if.then73.i_crit_edge, %if.then65.i.if.then73.i_crit_edge
  br label %rock_on.i

if.else75.i:                                      ; preds = %lor.lhs.false62.i
  %call76.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(4) @.str.25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.else75.i.if.then81.i_crit_edge, label %lor.lhs.false78.i

if.else75.i.if.then81.i_crit_edge:                ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81.i

lor.lhs.false78.i:                                ; preds = %if.else75.i
  %call79.i = call i32 @strcmp(ptr noundef nonnull %p.0202.i, ptr noundef nonnull dereferenceable(12) @.str.26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %lor.lhs.false78.i.if.then81.i_crit_edge, label %lor.lhs.false78.i.rock_on.i_crit_edge

lor.lhs.false78.i.rock_on.i_crit_edge:            ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rock_on.i

lor.lhs.false78.i.if.then81.i_crit_edge:          ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81.i

if.then81.i:                                      ; preds = %lor.lhs.false78.i.if.then81.i_crit_edge, %if.else75.i.if.then81.i_crit_edge
  %114 = ptrtoint ptr %description.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %description.i, align 4
  call void @kfree(ptr noundef %115) #8
  %call82.i = call noalias ptr @kstrdup(ptr noundef %incdec.ptr.i, i32 noundef 3264) #8
  %116 = ptrtoint ptr %description.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call82.i, ptr %description.i, align 4
  br label %rock_on.i

cleanup89.critedge.i:                             ; preds = %for.inc.12.i.cleanup89.critedge.i_crit_edge, %for.inc.9.i.cleanup89.critedge.i_crit_edge, %for.inc.8.i.cleanup89.critedge.i_crit_edge, %for.inc.7.i.cleanup89.critedge.i_crit_edge, %for.inc.6.i.cleanup89.critedge.i_crit_edge, %for.inc.5.i.cleanup89.critedge.i_crit_edge, %for.inc.4.i.cleanup89.critedge.i_crit_edge, %for.inc.3.i.cleanup89.critedge.i_crit_edge, %for.inc.2.i.cleanup89.critedge.i_crit_edge, %for.inc.1.i.cleanup89.critedge.i_crit_edge, %for.inc.i35.cleanup89.critedge.i_crit_edge, %for.body.preheader.i.cleanup89.critedge.i_crit_edge
  %i.0197.lcssa.i = phi i32 [ 0, %for.body.preheader.i.cleanup89.critedge.i_crit_edge ], [ 1, %for.inc.i35.cleanup89.critedge.i_crit_edge ], [ 2, %for.inc.1.i.cleanup89.critedge.i_crit_edge ], [ 3, %for.inc.2.i.cleanup89.critedge.i_crit_edge ], [ 4, %for.inc.3.i.cleanup89.critedge.i_crit_edge ], [ 5, %for.inc.4.i.cleanup89.critedge.i_crit_edge ], [ 6, %for.inc.5.i.cleanup89.critedge.i_crit_edge ], [ 7, %for.inc.6.i.cleanup89.critedge.i_crit_edge ], [ 8, %for.inc.7.i.cleanup89.critedge.i_crit_edge ], [ 9, %for.inc.8.i.cleanup89.critedge.i_crit_edge ], [ 10, %for.inc.9.i.cleanup89.critedge.i_crit_edge ], [ 13, %for.inc.12.i.cleanup89.critedge.i_crit_edge ]
  %117 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %i.0197.lcssa.i, ptr %arrayidx191.i, align 4
  br label %rock_on.i

rock_on.i:                                        ; preds = %cleanup89.critedge.i, %if.then81.i, %lor.lhs.false78.i.rock_on.i_crit_edge, %if.then73.i, %lor.lhs.false70.i.rock_on.i_crit_edge, %for.inc.13.i, %if.then32.i, %if.then24.i, %if.end9.i.rock_on.i_crit_edge
  %guessed_class.3.i = phi i32 [ %guessed_class.0199.i, %if.end9.i.rock_on.i_crit_edge ], [ %guessed_class.0199.i, %cleanup89.critedge.i ], [ %guessed_class.0199.i, %lor.lhs.false78.i.rock_on.i_crit_edge ], [ %guessed_class.0199.i, %if.then81.i ], [ 1, %if.then73.i ], [ %guessed_class.0199.i, %lor.lhs.false70.i.rock_on.i_crit_edge ], [ %guessed_class.0199.i, %if.then32.i ], [ %guessed_class.0199.i, %if.then24.i ], [ %guessed_class.0199.i, %for.inc.13.i ]
  %add.ptr95.i = getelementptr i8, ptr %call6.i, i32 1
  %tobool5.not204.i = icmp eq ptr %add.ptr95.i, null
  %tobool5.not.i = or i1 %tobool7.not.i, %tobool5.not204.i
  br i1 %tobool5.not.i, label %while.end98.i, label %rock_on.i.while.body.i33_crit_edge

rock_on.i.while.body.i33_crit_edge:               ; preds = %rock_on.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i33

while.end98.i:                                    ; preds = %rock_on.i
  %118 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx191.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %119)
  %cmp100.i = icmp eq i32 %119, 12
  br i1 %cmp100.i, label %if.then102.i, label %while.end98.i.if.end104.i_crit_edge

while.end98.i.if.end104.i_crit_edge:              ; preds = %while.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.then102.i:                                     ; preds = %while.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %guessed_class.3.i, ptr %arrayidx191.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then102.i, %while.end98.i.if.end104.i_crit_edge
  %121 = ptrtoint ptr %name56.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name56.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %122) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i183.i = icmp sgt i32 %78, -1
  br i1 %cmp.i183.i, label %do.end3.i.i, label %if.end104.i.do.end8.i.i_crit_edge

if.end104.i.do.end8.i.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

do.end3.i.i:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %78) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end3.i.i, %if.end104.i.do.end8.i.i_crit_edge
  %123 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx191.i, align 4
  %descr.i.i = getelementptr [15 x %struct.anon.69], ptr @classes, i32 0, i32 %124, i32 1
  %125 = ptrtoint ptr %descr.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %descr.i.i, align 4
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %126) #11
  %127 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx191.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i184.i = icmp eq i32 %128, 0
  br i1 %tobool.not.i184.i, label %do.end8.i.i.pretty_print.exit.i_crit_edge, label %do.end16.i.i

do.end8.i.i.pretty_print.exit.i_crit_edge:        ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pretty_print.exit.i

do.end16.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mfr.i, align 4
  %131 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %model.i, align 4
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %130, ptr noundef %132) #11
  br label %pretty_print.exit.i

pretty_print.exit.i:                              ; preds = %do.end16.i.i, %do.end8.i.i.pretty_print.exit.i_crit_edge
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %if.end15

if.end15:                                         ; preds = %pretty_print.exit.i, %do.end.i32, %parport_read_device_id.exit.if.end15_crit_edge, %parport_read_device_id.exit.thread, %if.end.if.end15_crit_edge
  %retval1.0 = phi i32 [ %call5, %if.end.if.end15_crit_edge ], [ %len.5.i, %parport_read_device_id.exit.if.end15_crit_edge ], [ %retval.6.i.ph, %parport_read_device_id.exit.thread ], [ %len.5.i, %do.end.i32 ], [ %len.5.i, %pretty_print.exit.i ]
  call void @parport_release(ptr noundef nonnull %call) #8
  call void @parport_close(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.end15 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_open(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim_or_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_negotiate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/parport/probe.c", i32 251, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/parport/probe.c", i32 176, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @parport_read_device_id._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @parport_read_device_id._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/parport/probe.c", i32 199, i32 5}
!10 = !{ptr @parport_read_device_id._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @parport_read_device_id._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/parport/probe.c", i32 210, i32 4}
!14 = !{ptr @parport_read_device_id._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @parport_read_device_id._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/parport/probe.c", i32 61, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @parse_data._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @parse_data._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/parport/probe.c", i32 78, i32 19}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/parport/probe.c", i32 78, i32 40}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/parport/probe.c", i32 81, i32 26}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/parport/probe.c", i32 81, i32 47}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/parport/probe.c", i32 84, i32 26}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/parport/probe.c", i32 84, i32 47}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/parport/probe.c", i32 96, i32 5}
!35 = !{ptr @parse_data._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @parse_data._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/parport/probe.c", i32 99, i32 26}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/parport/probe.c", i32 100, i32 19}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/parport/probe.c", i32 105, i32 21}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/parport/probe.c", i32 105, i32 43}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/parport/probe.c", i32 107, i32 26}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/parport/probe.c", i32 107, i32 47}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/parport/probe.c", i32 20, i32 4}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/parport/probe.c", i32 20, i32 19}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/parport/probe.c", i32 21, i32 4}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/parport/probe.c", i32 21, i32 19}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/parport/probe.c", i32 22, i32 4}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/parport/probe.c", i32 22, i32 19}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/parport/probe.c", i32 23, i32 4}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/parport/probe.c", i32 23, i32 19}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/parport/probe.c", i32 24, i32 4}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/parport/probe.c", i32 24, i32 19}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/parport/probe.c", i32 25, i32 4}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/parport/probe.c", i32 26, i32 4}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/parport/probe.c", i32 26, i32 19}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/parport/probe.c", i32 27, i32 4}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/parport/probe.c", i32 27, i32 19}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/parport/probe.c", i32 28, i32 4}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/parport/probe.c", i32 28, i32 19}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/parport/probe.c", i32 29, i32 4}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/parport/probe.c", i32 29, i32 19}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/parport/probe.c", i32 30, i32 4}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/parport/probe.c", i32 30, i32 19}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/parport/probe.c", i32 31, i32 19}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/parport/probe.c", i32 32, i32 19}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/parport/probe.c", i32 33, i32 4}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/parport/probe.c", i32 33, i32 19}
!99 = !{ptr @classes, !100, !"classes", i1 false, i1 false}
!100 = !{!"../drivers/parport/probe.c", i32 19, i32 3}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/parport/probe.c", i32 41, i32 2}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pretty_print._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @pretty_print._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/parport/probe.c", i32 44, i32 3}
!108 = !{ptr @pretty_print._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @pretty_print._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/parport/probe.c", i32 46, i32 2}
!112 = !{ptr @pretty_print._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @pretty_print._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/parport/probe.c", i32 48, i32 3}
!116 = !{ptr @pretty_print._entry.60, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pretty_print._entry_ptr.62, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/parport/probe.c", i32 50, i32 2}
!120 = !{ptr @pretty_print._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @pretty_print._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
