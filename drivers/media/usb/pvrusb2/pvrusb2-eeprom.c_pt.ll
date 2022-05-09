; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-eeprom.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }

@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_eeprom_analyze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pvrusb2: eeprom assumed v4l tveeprom module\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_eeprom_analyze\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-eeprom.c\00", [53 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr = internal global ptr @pvr2_eeprom_analyze._entry, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pvrusb2: eeprom direct call results:\0A\00", [56 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.5 = internal global ptr @pvr2_eeprom_analyze._entry.3, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016pvrusb2: has_radio=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.8 = internal global ptr @pvr2_eeprom_analyze._entry.6, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016pvrusb2: tuner_type=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.11 = internal global ptr @pvr2_eeprom_analyze._entry.9, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016pvrusb2: tuner_formats=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.14 = internal global ptr @pvr2_eeprom_analyze._entry.12, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016pvrusb2: audio_processor=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.17 = internal global ptr @pvr2_eeprom_analyze._entry.15, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016pvrusb2: model=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.20 = internal global ptr @pvr2_eeprom_analyze._entry.18, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016pvrusb2: revision=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.23 = internal global ptr @pvr2_eeprom_analyze._entry.21, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016pvrusb2: serial_number=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.26 = internal global ptr @pvr2_eeprom_analyze._entry.24, section ".printk_index", align 4
@pvr2_eeprom_analyze._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016pvrusb2: rev_str=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@pvr2_eeprom_analyze._entry_ptr.29 = internal global ptr @pvr2_eeprom_analyze._entry.27, section ".printk_index", align 4
@pvr2_eeprom_fetch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016pvrusb2: Failed to allocate memory required to read eeprom\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_eeprom_fetch\00", [46 x i8] zeroinitializer }, align 32
@pvr2_eeprom_fetch._entry_ptr = internal global ptr @pvr2_eeprom_fetch._entry, section ".printk_index", align 4
@pvr2_eeprom_fetch._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016pvrusb2: Value for eeprom addr from controller was 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@pvr2_eeprom_fetch._entry_ptr.34 = internal global ptr @pvr2_eeprom_fetch._entry.32, section ".printk_index", align 4
@pvr2_eeprom_fetch._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016pvrusb2: Examining %d byte eeprom at location 0x%x using %d bit addressing\0A\00", [50 x i8] zeroinitializer }, align 32
@pvr2_eeprom_fetch._entry_ptr.37 = internal global ptr @pvr2_eeprom_fetch._entry.35, section ".printk_index", align 4
@pvr2_eeprom_fetch._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pvrusb2: eeprom fetch set offs err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@pvr2_eeprom_fetch._entry_ptr.40 = internal global ptr @pvr2_eeprom_fetch._entry.38, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 115, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 116, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 117, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 118, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 119, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 120, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 121, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 122, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 123, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 124, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 44, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 49, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 62, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [46 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 91, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @pvr2_eeprom_analyze._entry, ptr @pvr2_eeprom_analyze._entry.12, ptr @pvr2_eeprom_analyze._entry.15, ptr @pvr2_eeprom_analyze._entry.18, ptr @pvr2_eeprom_analyze._entry.21, ptr @pvr2_eeprom_analyze._entry.24, ptr @pvr2_eeprom_analyze._entry.27, ptr @pvr2_eeprom_analyze._entry.3, ptr @pvr2_eeprom_analyze._entry.6, ptr @pvr2_eeprom_analyze._entry.9, ptr @pvr2_eeprom_analyze._entry_ptr, ptr @pvr2_eeprom_analyze._entry_ptr.11, ptr @pvr2_eeprom_analyze._entry_ptr.14, ptr @pvr2_eeprom_analyze._entry_ptr.17, ptr @pvr2_eeprom_analyze._entry_ptr.20, ptr @pvr2_eeprom_analyze._entry_ptr.23, ptr @pvr2_eeprom_analyze._entry_ptr.26, ptr @pvr2_eeprom_analyze._entry_ptr.29, ptr @pvr2_eeprom_analyze._entry_ptr.5, ptr @pvr2_eeprom_analyze._entry_ptr.8, ptr @pvr2_eeprom_fetch._entry, ptr @pvr2_eeprom_fetch._entry.32, ptr @pvr2_eeprom_fetch._entry.35, ptr @pvr2_eeprom_fetch._entry.38, ptr @pvr2_eeprom_fetch._entry_ptr, ptr @pvr2_eeprom_fetch._entry_ptr.34, ptr @pvr2_eeprom_fetch._entry_ptr.37, ptr @pvr2_eeprom_fetch._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_analyze._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_fetch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_fetch._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_fetch._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_eeprom_fetch._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_eeprom_analyze(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %iadd.i = alloca [2 x i8], align 1
  %tvdata = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tvdata) #5
  %0 = call ptr @memset(ptr %tvdata, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %iadd.i) #5
  %3 = getelementptr inbounds [2 x i8], ptr %iadd.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 128) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %6 = load i32, ptr @pvrusb2_debug, align 4
  br i1 %tobool.not.i, label %do.body.i, label %do.body8.i

do.body.i:                                        ; preds = %entry
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.pvr2_eeprom_fetch.exit.thread_crit_edge, label %do.end.i

do.body.i.pvr2_eeprom_fetch.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_eeprom_fetch.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %pvr2_eeprom_fetch.exit.thread

do.body8.i:                                       ; preds = %entry
  %and9.i = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body8.i.do.end19.i_crit_edge, label %do.end14.i

do.body8.i.do.end19.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19.i

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %eeprom_addr.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 102
  %7 = ptrtoint ptr %eeprom_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eeprom_addr.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %8) #9
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end14.i, %do.body8.i.do.end19.i_crit_edge
  %eeprom_addr20.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 102
  %9 = ptrtoint ptr %eeprom_addr20.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eeprom_addr20.i, align 4
  %and22.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %conv21.i = lshr i32 %10, 1
  %11 = and i32 %conv21.i, 127
  %addr.0.in.i = select i1 %tobool23.not.i, i32 %10, i32 %11
  %and29.i = and i32 %addr.0.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %conv31.i = select i1 %tobool30.not.i, i16 256, i16 4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %12 = load i32, ptr @pvrusb2_debug, align 4
  %and33.i = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.end19.do.end47_crit_edge.i, label %do.end38.i

do.end19.do.end47_crit_edge.i:                    ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = zext i16 %conv31.i to i32
  br label %do.end47.i

do.end38.i:                                       ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i = and i32 %addr.0.in.i, 255
  %conv40.i = zext i16 %conv31.i to i32
  %cond43.i = select i1 %tobool30.not.i, i32 8, i32 16
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv40.i, i32 noundef %conv28.i, i32 noundef %cond43.i) #9
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end38.i, %do.end19.do.end47_crit_edge.i
  %conv66.pre-phi.i = phi i32 [ %.pre.i, %do.end19.do.end47_crit_edge.i ], [ %conv40.i, %do.end38.i ]
  %13 = trunc i32 %addr.0.in.i to i16
  %conv48.i = and i16 %13, 255
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv48.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %conv53.i = select i1 %tobool30.not.i, i16 1, i16 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv53.i, ptr %1, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %iadd.i, ptr %buf.i, align 4
  %arrayidx57.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv48.i, ptr %arrayidx57.i, align 4
  %flags60.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags60.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags60.i, align 2
  %sub67.i = add nsw i32 %conv66.pre-phi.i, -128
  %len81.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %buf83.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 10
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end78.i
  %add102.i = add nuw nsw i32 %spec.select.i, %tcnt.0135.i
  %cmp.i = icmp ult i32 %add102.i, 128
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %pvr2_eeprom_fetch.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end47.i
  %tcnt.0135.i = phi i32 [ 0, %do.end47.i ], [ %add102.i, %for.cond.i.for.body.i_crit_edge ]
  %20 = add nsw i32 %tcnt.0135.i, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %20)
  %cmp62.i = icmp ult i32 %20, -129
  %sub.i = sub nuw nsw i32 128, %tcnt.0135.i
  %spec.select.i = select i1 %cmp62.i, i32 %sub.i, i32 16
  %add68.i = add nsw i32 %sub67.i, %tcnt.0135.i
  br i1 %tobool30.not.i, label %if.else.i, label %if.then70.i

if.then70.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr71.i = lshr i32 %add68.i, 8
  %conv72.i = trunc i32 %shr71.i to i8
  %21 = ptrtoint ptr %iadd.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv72.i, ptr %iadd.i, align 1
  %conv74.i = trunc i32 %add68.i to i8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv74.i, ptr %3, align 1
  br label %if.end78.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv76.i = trunc i32 %add68.i to i8
  %23 = ptrtoint ptr %iadd.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv76.i, ptr %iadd.i, align 1
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.else.i, %if.then70.i
  %conv79.i = trunc i32 %spec.select.i to i16
  %24 = ptrtoint ptr %len81.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv79.i, ptr %len81.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %tcnt.0135.i
  %25 = ptrtoint ptr %buf83.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %buf83.i, align 4
  %call85.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call85.i)
  %cmp86.not.i = icmp eq i32 %call85.i, 2
  br i1 %cmp86.not.i, label %for.cond.i, label %do.body89.i

do.body89.i:                                      ; preds = %if.end78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %26 = load i32, ptr @pvrusb2_debug, align 4
  %and90.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %do.body89.i.do.end100.i_crit_edge, label %do.end95.i

do.body89.i.do.end100.i_crit_edge:                ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100.i

do.end95.i:                                       ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #7
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call85.i) #9
  br label %do.end100.i

do.end100.i:                                      ; preds = %do.end95.i, %do.body89.i.do.end100.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %pvr2_eeprom_fetch.exit.thread

pvr2_eeprom_fetch.exit.thread:                    ; preds = %do.end100.i, %do.end.i, %do.body.i.pvr2_eeprom_fetch.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %iadd.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  br label %cleanup

pvr2_eeprom_fetch.exit:                           ; preds = %for.cond.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %iadd.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tvdata, ptr noundef nonnull %call7.i.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %27 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %pvr2_eeprom_fetch.exit.do.body8_crit_edge, label %do.end

pvr2_eeprom_fetch.exit.do.body8_crit_edge:        ; preds = %pvr2_eeprom_fetch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

do.end:                                           ; preds = %pvr2_eeprom_fetch.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %do.body8

do.body8:                                         ; preds = %do.end, %pvr2_eeprom_fetch.exit.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %28 = load i32, ptr @pvrusb2_debug, align 4
  %and9 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.body20_crit_edge, label %do.end14

do.body8.do.body20_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %do.body20

do.body20:                                        ; preds = %do.end14, %do.body8.do.body20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %29 = load i32, ptr @pvrusb2_debug, align 4
  %and21 = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.body32_crit_edge, label %do.end26

do.body20.do.body32_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body32

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %tvdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tvdata, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %31) #9
  br label %do.body32

do.body32:                                        ; preds = %do.end26, %do.body20.do.body32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %32 = load i32, ptr @pvrusb2_debug, align 4
  %and33 = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.body44_crit_edge, label %do.end38

do.body32.do.body44_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_type = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 3
  %33 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tuner_type, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %34) #9
  br label %do.body44

do.body44:                                        ; preds = %do.end38, %do.body32.do.body44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %35 = load i32, ptr @pvrusb2_debug, align 4
  %and45 = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.do.body56_crit_edge, label %do.end50

do.body44.do.body56_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_formats = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 4
  %36 = ptrtoint ptr %tuner_formats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tuner_formats, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %37) #9
  br label %do.body56

do.body56:                                        ; preds = %do.end50, %do.body44.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %38 = load i32, ptr @pvrusb2_debug, align 4
  %and57 = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.body68_crit_edge, label %do.end62

do.body56.do.body68_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body68

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %audio_processor = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 9
  %39 = ptrtoint ptr %audio_processor to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %audio_processor, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %40) #9
  br label %do.body68

do.body68:                                        ; preds = %do.end62, %do.body56.do.body68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %41 = load i32, ptr @pvrusb2_debug, align 4
  %and69 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.do.body80_crit_edge, label %do.end74

do.body68.do.body80_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  %model = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 11
  %42 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %model, align 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %43) #9
  br label %do.body80

do.body80:                                        ; preds = %do.end74, %do.body68.do.body80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %44 = load i32, ptr @pvrusb2_debug, align 4
  %and81 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.body92_crit_edge, label %do.end86

do.body80.do.body92_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  %revision = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 12
  %45 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %revision, align 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %46) #9
  br label %do.body92

do.body92:                                        ; preds = %do.end86, %do.body80.do.body92_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %47 = load i32, ptr @pvrusb2_debug, align 4
  %and93 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.do.body104_crit_edge, label %do.end98

do.body92.do.body104_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body104

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  %serial_number = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 13
  %48 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %serial_number, align 4
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %49) #9
  br label %do.body104

do.body104:                                       ; preds = %do.end98, %do.body92.do.body104_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %50 = load i32, ptr @pvrusb2_debug, align 4
  %and105 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body104.do.end115_crit_edge, label %do.end110

do.body104.do.end115_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end115

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %rev_str = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 14
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %rev_str) #9
  br label %do.end115

do.end115:                                        ; preds = %do.end110, %do.body104.do.end115_crit_edge
  %tuner_type116 = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 3
  %51 = ptrtoint ptr %tuner_type116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tuner_type116, align 4
  %tuner_type117 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 71
  %53 = ptrtoint ptr %tuner_type117 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tuner_type117, align 4
  %tuner_updated = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 72
  %54 = ptrtoint ptr %tuner_updated to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %tuner_updated, align 8
  %serial_number118 = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 13
  %55 = ptrtoint ptr %serial_number118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %serial_number118, align 4
  %serial_number119 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 95
  %57 = ptrtoint ptr %serial_number119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %serial_number119, align 4
  %tuner_formats120 = getelementptr inbounds %struct.tveeprom, ptr %tvdata, i32 0, i32 4
  %58 = ptrtoint ptr %tuner_formats120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tuner_formats120, align 4
  %conv = zext i32 %59 to i64
  %std_mask_eeprom = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 83
  %60 = ptrtoint ptr %std_mask_eeprom to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv, ptr %std_mask_eeprom, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %pvr2_eeprom_fetch.exit.thread
  %retval.0 = phi i32 [ 0, %do.end115 ], [ -22, %pvr2_eeprom_fetch.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tvdata) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 115, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pvr2_eeprom_analyze._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pvr2_eeprom_analyze._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 116, i32 2}
!8 = !{ptr @pvr2_eeprom_analyze._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @pvr2_eeprom_analyze._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 117, i32 2}
!12 = !{ptr @pvr2_eeprom_analyze._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @pvr2_eeprom_analyze._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 118, i32 2}
!16 = !{ptr @pvr2_eeprom_analyze._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @pvr2_eeprom_analyze._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 119, i32 2}
!20 = !{ptr @pvr2_eeprom_analyze._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @pvr2_eeprom_analyze._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 120, i32 2}
!24 = !{ptr @pvr2_eeprom_analyze._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pvr2_eeprom_analyze._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 121, i32 2}
!28 = !{ptr @pvr2_eeprom_analyze._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pvr2_eeprom_analyze._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 122, i32 2}
!32 = !{ptr @pvr2_eeprom_analyze._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pvr2_eeprom_analyze._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 123, i32 2}
!36 = !{ptr @pvr2_eeprom_analyze._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pvr2_eeprom_analyze._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 124, i32 2}
!40 = !{ptr @pvr2_eeprom_analyze._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvr2_eeprom_analyze._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 44, i32 3}
!44 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pvr2_eeprom_fetch._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pvr2_eeprom_fetch._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 49, i32 2}
!49 = !{ptr @pvr2_eeprom_fetch._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pvr2_eeprom_fetch._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 62, i32 2}
!53 = !{ptr @pvr2_eeprom_fetch._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pvr2_eeprom_fetch._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-eeprom.c", i32 91, i32 4}
!57 = !{ptr @pvr2_eeprom_fetch._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pvr2_eeprom_fetch._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
