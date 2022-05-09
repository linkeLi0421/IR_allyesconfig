; ModuleID = '/llk/IR_all_yes/drivers/iio/common/ssp_sensors/ssp_spi.c_pt.bc'
source_filename = "../drivers/iio/common/ssp_sensors/ssp_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.ssp_data = type { ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.delayed_work, i8, i8, i8, i64, [21 x i32], i32, i32, i32, i32, i32, i8, i8, i32, [21 x i32], [21 x i32], [21 x i8], i32, i32, i32, %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.list_head, [21 x ptr], %struct.atomic_t, [72 x i8], [2 x i16], [124 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ssp_msg = type { i16, i16, %struct.list_head, ptr, ptr, ptr }
%struct.ssp_sensorhub_info = type { ptr, ptr, i32, ptr, i32 }

@ssp_irq_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"header read fail\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssp_irq_msg\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/iio/common/ssp_sensors/ssp_spi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssp_irq_msg._entry_ptr = internal global ptr @ssp_irq_msg._entry, section ".printk_index", align 4
@ssp_irq_msg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"length received from mcu is 0\0A\00", [33 x i8] zeroinitializer }, align 32
@ssp_irq_msg._entry_ptr.7 = internal global ptr @ssp_irq_msg._entry.5, section ".printk_index", align 4
@ssp_irq_msg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No match error %x\0A\00", [45 x i8] zeroinitializer }, align 32
@ssp_irq_msg._entry_ptr.10 = internal global ptr @ssp_irq_msg._entry.8, section ".printk_index", align 4
@ssp_irq_msg._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi read fail\0A\00", [17 x i8] zeroinitializer }, align 32
@ssp_irq_msg._entry_ptr.13 = internal global ptr @ssp_irq_msg._entry.11, section ".printk_index", align 4
@ssp_irq_msg._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown msg type\0A\00", [46 x i8] zeroinitializer }, align 32
@ssp_irq_msg._entry_ptr.16 = internal global ptr @ssp_irq_msg._entry.14, section ".printk_index", align 4
@ssp_send_instruction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - Skip Inst! DL state = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssp_send_instruction\00", [43 x i8] zeroinitializer }, align 32
@ssp_send_instruction._entry_ptr = internal global ptr @ssp_send_instruction._entry, section ".printk_index", align 4
@ssp_send_instruction._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 493, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - Bypass Inst Skip! - %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ssp_send_instruction._entry_ptr.21 = internal global ptr @ssp_send_instruction._entry.19, section ".printk_index", align 4
@ssp_get_sensor_scanning_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - spi read fail %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ssp_get_sensor_scanning_info\00", [35 x i8] zeroinitializer }, align 32
@ssp_get_sensor_scanning_info._entry_ptr = internal global ptr @ssp_get_sensor_scanning_info._entry, section ".printk_index", align 4
@ssp_get_sensor_scanning_info._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 572, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s state: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssp_get_sensor_scanning_info._entry_ptr.27 = internal global ptr @ssp_get_sensor_scanning_info._entry.24, section ".printk_index", align 4
@ssp_get_firmware_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 591, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - transfer fail %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssp_get_firmware_rev\00", [43 x i8] zeroinitializer }, align 32
@ssp_get_firmware_rev._entry_ptr = internal global ptr @ssp_get_firmware_rev._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ssp_parse_dataframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mcu data frame1 error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssp_parse_dataframe\00", [44 x i8] zeroinitializer }, align 32
@ssp_parse_dataframe._entry_ptr = internal global ptr @ssp_parse_dataframe._entry, section ".printk_index", align 4
@ssp_parse_dataframe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no client for frame\0A\00", [43 x i8] zeroinitializer }, align 32
@ssp_parse_dataframe._entry_ptr.34 = internal global ptr @ssp_parse_dataframe._entry.32, section ".printk_index", align 4
@ssp_offset_map = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 10, i32 10, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 12, i32 40, i32 12], [44 x i8] zeroinitializer }, align 32
@ssp_parse_dataframe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mcu data frame3 error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ssp_parse_dataframe._entry_ptr.37 = internal global ptr @ssp_parse_dataframe._entry.35, section ".printk_index", align 4
@ssp_do_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s spi_write fail\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssp_do_transfer\00", [16 x i8] zeroinitializer }, align 32
@ssp_do_transfer._entry_ptr = internal global ptr @ssp_do_transfer._entry, section ".printk_index", align 4
@ssp_check_lines._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:timeout, hw ack wait fail %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssp_check_lines\00", [16 x i8] zeroinitializer }, align 32
@ssp_check_lines._entry_ptr = internal global ptr @ssp_check_lines._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 4, i64 6, i64 7, i64 55]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 343, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 351, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 392, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 430, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 441, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 487, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 492, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 565, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 572, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 591, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 280, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 295, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"ssp_offset_map\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 43, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 305, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 201, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private constant [44 x i8] c"../drivers/iio/common/ssp_sensors/ssp_spi.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 164, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 87, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @ssp_check_lines._entry, ptr @ssp_check_lines._entry_ptr, ptr @ssp_do_transfer._entry, ptr @ssp_do_transfer._entry_ptr, ptr @ssp_get_firmware_rev._entry, ptr @ssp_get_firmware_rev._entry_ptr, ptr @ssp_get_sensor_scanning_info._entry, ptr @ssp_get_sensor_scanning_info._entry.24, ptr @ssp_get_sensor_scanning_info._entry_ptr, ptr @ssp_get_sensor_scanning_info._entry_ptr.27, ptr @ssp_irq_msg._entry, ptr @ssp_irq_msg._entry.11, ptr @ssp_irq_msg._entry.14, ptr @ssp_irq_msg._entry.5, ptr @ssp_irq_msg._entry.8, ptr @ssp_irq_msg._entry_ptr, ptr @ssp_irq_msg._entry_ptr.10, ptr @ssp_irq_msg._entry_ptr.13, ptr @ssp_irq_msg._entry_ptr.16, ptr @ssp_irq_msg._entry_ptr.7, ptr @ssp_parse_dataframe._entry, ptr @ssp_parse_dataframe._entry.32, ptr @ssp_parse_dataframe._entry.35, ptr @ssp_parse_dataframe._entry_ptr, ptr @ssp_parse_dataframe._entry_ptr.34, ptr @ssp_parse_dataframe._entry_ptr.37, ptr @ssp_send_instruction._entry, ptr @ssp_send_instruction._entry.19, ptr @ssp_send_instruction._entry_ptr, ptr @ssp_send_instruction._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @ssp_offset_map, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_completion.__key, ptr @.str.42], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_irq_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_irq_msg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_irq_msg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_irq_msg._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_irq_msg._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_send_instruction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_send_instruction._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_get_sensor_scanning_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_get_sensor_scanning_info._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_get_firmware_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_parse_dataframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_parse_dataframe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_offset_map to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_parse_dataframe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_do_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_check_lines._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_irq_msg(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i214 = alloca %struct.spi_message, align 4
  %t.i215 = alloca %struct.spi_transfer, align 4
  %msg.i.i197 = alloca %struct.spi_message, align 4
  %t.i198 = alloca %struct.spi_transfer, align 4
  %msg.i.i184 = alloca %struct.spi_message, align 4
  %t.i185 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %header_buffer = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %2 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %3 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %header_buffer, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_read.exit_crit_edge

entry.spi_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %entry.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %spi_read.exit
  %arrayidx = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 33, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp5 = icmp eq i16 %18, 0
  br i1 %cmp5, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %22 = ptrtoint ptr %header_buffer to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %header_buffer, align 128
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv14 = zext i16 %24 to i32
  %25 = and i16 %24, 3
  %conv15 = zext i16 %25 to i32
  %26 = zext i32 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv15, label %do.end119 [
    i32 0, label %if.end13.sw.bb_crit_edge
    i32 1, label %if.end13.sw.bb_crit_edge242
    i32 2, label %if.end8.i.i
  ]

if.end13.sw.bb_crit_edge242:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end13.sw.bb_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end13.sw.bb_crit_edge, %if.end13.sw.bb_crit_edge242
  %pending_lock = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %pending_lock, i32 noundef 0) #8
  %pending_list = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 29
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %.pn.in.in = phi ptr [ %pending_list, %sw.bb ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %27 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp23.not = icmp eq ptr %.pn.in, %pending_list
  br i1 %cmp23.not, label %if.end8.i, label %for.body

for.body:                                         ; preds = %for.cond
  %options = getelementptr i8, ptr %.pn.in, i32 -2
  %28 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %options, align 2
  %cmp27 = icmp eq i16 %29, %24
  br i1 %cmp27, label %if.then29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then29:                                        ; preds = %for.body
  %options.le = getelementptr i8, ptr %.pn.in, i32 -2
  %msg.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  %call.i.i183 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #8
  br i1 %call.i.i183, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %36 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %trunc = trunc i16 %24 to i2
  %38 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.43)
  switch i2 %trunc, label %list_del.exit.if.end87_crit_edge [
    i2 0, label %if.then60
    i2 1, label %if.then71
  ]

list_del.exit.if.end87_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end8.i:                                        ; preds = %for.cond
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3265) #12
  %tobool40.not = icmp eq ptr %call9.i, null
  br i1 %tobool40.not, label %if.end8.i._unlock_crit_edge, label %if.end42

if.end8.i._unlock_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_unlock

if.end42:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 128
  %call45 = call fastcc i32 @spi_read(ptr noundef %40, ptr noundef nonnull %call9.i, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call45)
  %cmp46 = icmp sgt i32 %call45, -1
  %spec.store.select = select i1 %cmp46, i32 -71, i32 %call45
  call void @kfree(ptr noundef nonnull %call9.i) #8
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %conv14) #11
  br label %_unlock

if.then60:                                        ; preds = %list_del.exit
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 128
  %buffer62 = getelementptr i8, ptr %.pn.in, i32 16
  %45 = ptrtoint ptr %buffer62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer62, align 4
  %arrayidx63 = getelementptr i8, ptr %46, i32 12
  %47 = ptrtoint ptr %msg.0.le to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %msg.0.le, align 4
  %conv65 = zext i16 %48 to i32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i185) #8
  %49 = call ptr @memset(ptr %t.i185, i32 0, i32 96)
  %rx_buf.i186 = getelementptr inbounds %struct.spi_transfer, ptr %t.i185, i32 0, i32 1
  %50 = ptrtoint ptr %rx_buf.i186 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx63, ptr %rx_buf.i186, align 4
  %len1.i187 = getelementptr inbounds %struct.spi_transfer, ptr %t.i185, i32 0, i32 2
  %51 = ptrtoint ptr %len1.i187 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv65, ptr %len1.i187, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i184) #8
  %52 = getelementptr inbounds i8, ptr %msg.i.i184, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %msg.i.i184 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %msg.i.i184, ptr %msg.i.i184, align 4
  %prev.i.i.i.i.i.i188 = getelementptr inbounds %struct.list_head, ptr %msg.i.i184, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i184, ptr %prev.i.i.i.i.i.i188, align 4
  %resources.i.i.i.i.i189 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i184, i32 0, i32 10
  %56 = ptrtoint ptr %resources.i.i.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i.i.i.i189, ptr %resources.i.i.i.i.i189, align 4
  %prev.i2.i.i.i.i.i190 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i184, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i.i.i.i189, ptr %prev.i2.i.i.i.i.i190, align 4
  %transfer_list.i.i.i.i191 = getelementptr inbounds %struct.spi_transfer, ptr %t.i185, i32 0, i32 18
  %call.i.i.i.i.i.i192 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i191, ptr noundef nonnull %msg.i.i184, ptr noundef nonnull %msg.i.i184) #8
  br i1 %call.i.i.i.i.i.i192, label %if.end.i.i.i.i.i.i194, label %if.then60.if.end67.thread_crit_edge

if.then60.if.end67.thread_crit_edge:              ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread

if.end.i.i.i.i.i.i194:                            ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i.i191, ptr %prev.i.i.i.i.i.i188, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i184, ptr %transfer_list.i.i.i.i191, align 4
  %prev3.i.i.i.i.i.i193 = getelementptr inbounds %struct.spi_transfer, ptr %t.i185, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i.i193 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i184, ptr %prev3.i.i.i.i.i.i193, align 4
  %61 = ptrtoint ptr %msg.i.i184 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i.i191, ptr %msg.i.i184, align 4
  br label %if.end67.thread

if.end67.thread:                                  ; preds = %if.end.i.i.i.i.i.i194, %if.then60.if.end67.thread_crit_edge
  %call.i.i195 = call i32 @spi_sync(ptr noundef %44, ptr noundef nonnull %msg.i.i184) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i184) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i185) #8
  br label %if.end87

if.then71:                                        ; preds = %list_del.exit
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 128
  %buffer73 = getelementptr i8, ptr %.pn.in, i32 16
  %64 = ptrtoint ptr %buffer73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer73, align 4
  %arrayidx74 = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %msg.0.le to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %msg.0.le, align 4
  %conv76 = zext i16 %67 to i32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i198) #8
  %68 = getelementptr inbounds i8, ptr %t.i198, i32 4
  %69 = call ptr @memset(ptr %68, i32 0, i32 92)
  %70 = ptrtoint ptr %t.i198 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx74, ptr %t.i198, align 4
  %len1.i199 = getelementptr inbounds %struct.spi_transfer, ptr %t.i198, i32 0, i32 2
  %71 = ptrtoint ptr %len1.i199 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv76, ptr %len1.i199, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i197) #8
  %72 = getelementptr inbounds i8, ptr %msg.i.i197, i32 8
  %73 = call ptr @memset(ptr %72, i32 0, i32 40)
  %74 = ptrtoint ptr %msg.i.i197 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %msg.i.i197, ptr %msg.i.i197, align 4
  %prev.i.i.i.i.i.i200 = getelementptr inbounds %struct.list_head, ptr %msg.i.i197, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i197, ptr %prev.i.i.i.i.i.i200, align 4
  %resources.i.i.i.i.i201 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i197, i32 0, i32 10
  %76 = ptrtoint ptr %resources.i.i.i.i.i201 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i.i.i201, ptr %resources.i.i.i.i.i201, align 4
  %prev.i2.i.i.i.i.i202 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i197, i32 0, i32 10, i32 1
  %77 = ptrtoint ptr %prev.i2.i.i.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i.i.i201, ptr %prev.i2.i.i.i.i.i202, align 4
  %transfer_list.i.i.i.i203 = getelementptr inbounds %struct.spi_transfer, ptr %t.i198, i32 0, i32 18
  %call.i.i.i.i.i.i204 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i203, ptr noundef nonnull %msg.i.i197, ptr noundef nonnull %msg.i.i197) #8
  br i1 %call.i.i.i.i.i.i204, label %if.end.i.i.i.i.i.i206, label %if.then71.spi_write.exit_crit_edge

if.then71.spi_write.exit_crit_edge:               ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i206:                            ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %prev.i.i.i.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i.i.i.i203, ptr %prev.i.i.i.i.i.i200, align 4
  %79 = ptrtoint ptr %transfer_list.i.i.i.i203 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i197, ptr %transfer_list.i.i.i.i203, align 4
  %prev3.i.i.i.i.i.i205 = getelementptr inbounds %struct.spi_transfer, ptr %t.i198, i32 0, i32 18, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i197, ptr %prev3.i.i.i.i.i.i205, align 4
  %81 = ptrtoint ptr %msg.i.i197 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i.i.i.i203, ptr %msg.i.i197, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i206, %if.then71.spi_write.exit_crit_edge
  %call.i.i207 = call i32 @spi_sync(ptr noundef %63, ptr noundef nonnull %msg.i.i197) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i197) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i198) #8
  %and79 = and i32 %conv14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %spi_write.exit.if.end87_crit_edge, label %if.then81

spi_write.exit.if.end87_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then81:                                        ; preds = %spi_write.exit
  %82 = ptrtoint ptr %options.le to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 4, ptr %options.le, align 2
  %83 = ptrtoint ptr %msg.0.le to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %msg.0.le, align 4
  %prev.i208 = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 29, i32 1
  %84 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i208, align 4
  %call.i.i209 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in, ptr noundef %85, ptr noundef %pending_list) #8
  br i1 %call.i.i209, label %if.end.i.i210, label %if.then81._unlock_crit_edge

if.then81._unlock_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %_unlock

if.end.i.i210:                                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.pn.in, ptr %prev.i208, align 4
  %87 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %pending_list, ptr %.pn.in, align 4
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %.pn.in, ptr %85, align 4
  br label %_unlock

if.end87:                                         ; preds = %spi_write.exit.if.end87_crit_edge, %if.end67.thread, %list_del.exit.if.end87_crit_edge
  %ret.1 = phi i32 [ %call.i.i207, %spi_write.exit.if.end87_crit_edge ], [ %call.i.i195, %if.end67.thread ], [ %call.i.i, %list_del.exit.if.end87_crit_edge ]
  %done = getelementptr i8, ptr %.pn.in, i32 8
  %90 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %done, align 4
  %tobool88.not = icmp eq ptr %91, null
  br i1 %tobool88.not, label %if.end87._unlock_crit_edge, label %if.then89

if.end87._unlock_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %_unlock

if.then89:                                        ; preds = %if.end87
  %call91 = call zeroext i1 @completion_done(ptr noundef nonnull %91) #8
  br i1 %call91, label %if.then89._unlock_crit_edge, label %if.then92

if.then89._unlock_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %_unlock

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %done, align 4
  call void @complete(ptr noundef %93) #8
  br label %_unlock

_unlock:                                          ; preds = %if.then92, %if.then89._unlock_crit_edge, %if.end87._unlock_crit_edge, %if.end.i.i210, %if.then81._unlock_crit_edge, %if.end42, %if.end8.i._unlock_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.then89._unlock_crit_edge ], [ %ret.1, %if.then92 ], [ %ret.1, %if.end87._unlock_crit_edge ], [ %spec.store.select, %if.end42 ], [ -12, %if.end8.i._unlock_crit_edge ], [ %call.i.i207, %if.then81._unlock_crit_edge ], [ %call.i.i207, %if.end.i.i210 ]
  call void @mutex_unlock(ptr noundef %pending_lock) #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end13
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3521) #12
  %tobool100.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool100.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end102

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102:                                        ; preds = %if.end8.i.i
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i215) #8
  %96 = call ptr @memset(ptr %t.i215, i32 0, i32 96)
  %rx_buf.i216 = getelementptr inbounds %struct.spi_transfer, ptr %t.i215, i32 0, i32 1
  %97 = ptrtoint ptr %rx_buf.i216 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call9.i.i, ptr %rx_buf.i216, align 4
  %len1.i217 = getelementptr inbounds %struct.spi_transfer, ptr %t.i215, i32 0, i32 2
  %98 = ptrtoint ptr %len1.i217 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv, ptr %len1.i217, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i214) #8
  %99 = getelementptr inbounds i8, ptr %msg.i.i214, i32 8
  %100 = call ptr @memset(ptr %99, i32 0, i32 40)
  %101 = ptrtoint ptr %msg.i.i214 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %msg.i.i214, ptr %msg.i.i214, align 4
  %prev.i.i.i.i.i.i218 = getelementptr inbounds %struct.list_head, ptr %msg.i.i214, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i.i.i.i218 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i214, ptr %prev.i.i.i.i.i.i218, align 4
  %resources.i.i.i.i.i219 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i214, i32 0, i32 10
  %103 = ptrtoint ptr %resources.i.i.i.i.i219 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %resources.i.i.i.i.i219, ptr %resources.i.i.i.i.i219, align 4
  %prev.i2.i.i.i.i.i220 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i214, i32 0, i32 10, i32 1
  %104 = ptrtoint ptr %prev.i2.i.i.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %resources.i.i.i.i.i219, ptr %prev.i2.i.i.i.i.i220, align 4
  %transfer_list.i.i.i.i221 = getelementptr inbounds %struct.spi_transfer, ptr %t.i215, i32 0, i32 18
  %call.i.i.i.i.i.i222 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i221, ptr noundef nonnull %msg.i.i214, ptr noundef nonnull %msg.i.i214) #8
  br i1 %call.i.i.i.i.i.i222, label %if.end.i.i.i.i.i.i224, label %if.end102.spi_read.exit226_crit_edge

if.end102.spi_read.exit226_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_read.exit226

if.end.i.i.i.i.i.i224:                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %prev.i.i.i.i.i.i218 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %transfer_list.i.i.i.i221, ptr %prev.i.i.i.i.i.i218, align 4
  %106 = ptrtoint ptr %transfer_list.i.i.i.i221 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %msg.i.i214, ptr %transfer_list.i.i.i.i221, align 4
  %prev3.i.i.i.i.i.i223 = getelementptr inbounds %struct.spi_transfer, ptr %t.i215, i32 0, i32 18, i32 1
  %107 = ptrtoint ptr %prev3.i.i.i.i.i.i223 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i214, ptr %prev3.i.i.i.i.i.i223, align 4
  %108 = ptrtoint ptr %msg.i.i214 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %transfer_list.i.i.i.i221, ptr %msg.i.i214, align 4
  br label %spi_read.exit226

spi_read.exit226:                                 ; preds = %if.end.i.i.i.i.i.i224, %if.end102.spi_read.exit226_crit_edge
  %call.i.i225 = call i32 @spi_sync(ptr noundef %95, ptr noundef nonnull %msg.i.i214) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i214) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i215) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i225)
  %cmp106 = icmp slt i32 %call.i.i225, 0
  br i1 %cmp106, label %do.end111, label %if.end114

do.end111:                                        ; preds = %spi_read.exit226
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.12) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.end114:                                        ; preds = %spi_read.exit226
  %sensor_devs.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 30
  %time_syncing.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 7
  %timestamp.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end114
  %idx.0105.i = phi i32 [ 0, %if.end114 ], [ %idx.2.i, %sw.epilog.i.for.body.i_crit_edge ]
  %inc.i = add nsw i32 %idx.0105.i, 1
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %idx.0105.i
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %112, label %for.body.i.sw.epilog.i_crit_edge [
    i8 55, label %sw.bb.i
    i8 3, label %sw.bb33.i
    i8 1, label %sw.bb47.i
    i8 4, label %sw.bb49.i
    i8 6, label %sw.bb51.i
    i8 7, label %sw.bb52.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %cmp1.not.i = icmp slt i32 %inc.i, %conv
  br i1 %cmp1.not.i, label %if.end.i227, label %sw.bb.i.ssp_parse_dataframe.exit_crit_edge

sw.bb.i.ssp_parse_dataframe.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ssp_parse_dataframe.exit

if.end.i227:                                      ; preds = %sw.bb.i
  %inc3.i = add nsw i32 %idx.0105.i, 2
  %arrayidx4.i = getelementptr i8, ptr %call9.i.i, i32 %inc.i
  %114 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %115)
  %cmp8.i = icmp ugt i8 %115, 20
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.le = zext i8 %115 to i32
  %116 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.30, i32 noundef %conv5.i.le) #11
  br label %ssp_parse_dataframe.exit

if.end11.i:                                       ; preds = %if.end.i227
  %arrayidx12.i = getelementptr ptr, ptr %sensor_devs.i, i32 %conv5.i
  %118 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx12.i, align 4
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %do.end28.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %119, i32 0, i32 19
  %120 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv.i.i, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %tobool15.not.i = icmp eq ptr %123, null
  br i1 %tobool15.not.i, label %if.then13.i.if.end31.i_crit_edge, label %if.then16.i

if.then13.i.if.end31.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc3.i, i32 %conv)
  %cmp17.not.i = icmp slt i32 %inc3.i, %conv
  br i1 %cmp17.not.i, label %if.end20.i, label %if.then16.i.ssp_parse_dataframe.exit_crit_edge

if.then16.i.ssp_parse_dataframe.exit_crit_edge:   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ssp_parse_dataframe.exit

if.end20.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.i = getelementptr i8, ptr %call9.i.i, i32 %inc3.i
  %124 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %timestamp.i, align 16
  %call24.i = call i32 %123(ptr noundef nonnull %119, ptr noundef %arrayidx23.i, i64 noundef %125) #8
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.33) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.end20.i, %if.then13.i.if.end31.i_crit_edge
  %arrayidx32.i = getelementptr [21 x i32], ptr @ssp_offset_map, i32 0, i32 %conv5.i
  %128 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx32.i, align 4
  %add.i = add i32 %129, %inc3.i
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %cmp34.not.i = icmp slt i32 %inc.i, %conv
  br i1 %cmp34.not.i, label %if.end37.i, label %sw.bb33.i.ssp_parse_dataframe.exit_crit_edge

sw.bb33.i.ssp_parse_dataframe.exit_crit_edge:     ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ssp_parse_dataframe.exit

if.end37.i:                                       ; preds = %sw.bb33.i
  %inc.i.i = add nsw i32 %idx.0105.i, 2
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i, i32 %inc.i
  %130 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %131 to i32
  %sub.i.i = sub i32 %conv, %inc.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i.i)
  %cmp.i.i228 = icmp slt i32 %sub.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp2.i.i = icmp eq i8 %131, 0
  %or.cond.i.i = or i1 %cmp2.i.i, %cmp.i.i228
  br i1 %or.cond.i.i, label %do.end43.i, label %ssp_print_mcu_debug.exit.thread.i

ssp_print_mcu_debug.exit.thread.i:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %inc.i.i, %conv.i.i
  br label %sw.epilog.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.36, i32 noundef -71) #11
  br label %ssp_parse_dataframe.exit

sw.bb47.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add48.i = add i32 %inc.i, %conv
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i96.i = add i32 %idx.0105.i, 9
  br label %sw.epilog.i

sw.bb51.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %time_syncing.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %time_syncing.i, align 2
  br label %sw.epilog.i

sw.bb52.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i = call i32 @ssp_queue_ssp_refresh_task(ptr noundef %data, i32 noundef 0) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb52.i, %sw.bb51.i, %sw.bb49.i, %sw.bb47.i, %ssp_print_mcu_debug.exit.thread.i, %if.end31.i, %for.body.i.sw.epilog.i_crit_edge
  %idx.2.i = phi i32 [ %inc.i, %for.body.i.sw.epilog.i_crit_edge ], [ %inc.i, %sw.bb52.i ], [ %inc.i, %sw.bb51.i ], [ %add.i96.i, %sw.bb49.i ], [ %add48.i, %sw.bb47.i ], [ %add.i, %if.end31.i ], [ %add.i.i, %ssp_print_mcu_debug.exit.thread.i ]
  %cmp.i229 = icmp slt i32 %idx.2.i, %conv
  br i1 %cmp.i229, label %sw.epilog.i.for.body.i_crit_edge, label %for.end.i

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %sw.epilog.i
  %135 = ptrtoint ptr %time_syncing.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %time_syncing.i, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool55.not.i = icmp eq i8 %136, 0
  br i1 %tobool55.not.i, label %for.end.i.ssp_parse_dataframe.exit_crit_edge, label %if.then56.i

for.end.i.ssp_parse_dataframe.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ssp_parse_dataframe.exit

if.then56.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %137 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %call.i.i.i, ptr %timestamp.i, align 16
  br label %ssp_parse_dataframe.exit

ssp_parse_dataframe.exit:                         ; preds = %if.then56.i, %for.end.i.ssp_parse_dataframe.exit_crit_edge, %do.end43.i, %sw.bb33.i.ssp_parse_dataframe.exit_crit_edge, %if.then16.i.ssp_parse_dataframe.exit_crit_edge, %do.end.i, %sw.bb.i.ssp_parse_dataframe.exit_crit_edge
  %retval.0.i = phi i32 [ -71, %do.end43.i ], [ -71, %do.end.i ], [ 0, %if.then56.i ], [ 0, %for.end.i.ssp_parse_dataframe.exit_crit_edge ], [ -71, %sw.bb33.i.ssp_parse_dataframe.exit_crit_edge ], [ -71, %if.then16.i.ssp_parse_dataframe.exit_crit_edge ], [ -71, %sw.bb.i.ssp_parse_dataframe.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

do.end119:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %ssp_parse_dataframe.exit, %do.end111, %if.end8.i.i.cleanup_crit_edge, %_unlock, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end10 ], [ -71, %do.end119 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call.i.i225, %do.end111 ], [ %retval.0.i, %ssp_parse_dataframe.exit ], [ %ret.2, %_unlock ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_read(ptr noundef %spi, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #8
  %0 = call ptr @memset(ptr %t, i32 0, i32 96)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %rx_buf, align 4
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %len1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_sync_transfer.exit_crit_edge

entry.spi_sync_transfer.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %entry.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #8
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssp_clean_pending_list(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_lock = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %pending_lock, i32 noundef 0) #8
  %pending_list = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 29
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_list, align 8
  %cmp.not29 = icmp eq ptr %1, %pending_list
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in30 = phi ptr [ %.pn32, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn32 = load ptr, ptr %.pn.in30, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in30, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %done = getelementptr i8, ptr %.pn.in30, i32 8
  %11 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %list_del.exit.for.inc_crit_edge, label %if.then

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %list_del.exit
  %call = tail call zeroext i1 @completion_done(ptr noundef nonnull %12) #8
  br i1 %call, label %if.then.for.inc_crit_edge, label %if.then9

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %done, align 4
  tail call void @complete(ptr noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.then.for.inc_crit_edge, %list_del.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn32, %pending_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pending_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_command(ptr noundef %data, i8 noundef zeroext %command, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i22.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3521, i32 noundef 12) #13
  %buffer.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i22.i, ptr %buffer.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i22.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %arg) #8
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %call7.i.i.i, align 8
  %options9.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %options9.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %options9.i, align 2
  %6 = ptrtoint ptr %call7.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %command, ptr %call7.i.i22.i, align 8
  %h.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 1
  %7 = ptrtoint ptr %h.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %h.sroa.5.0..sroa_idx.i, align 1
  %h.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 3
  %8 = ptrtoint ptr %h.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 256, ptr %h.sroa.7.0..sroa_idx.i, align 1
  %h.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 5
  %9 = ptrtoint ptr %h.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %3, ptr %h.sroa.9.0..sroa_idx.i, align 1
  %call.i = tail call fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0) #8
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %11) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.end ], [ -12, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_send_instruction(ptr noundef %data, i8 noundef zeroext %inst, i8 noundef zeroext %sensor_type, ptr nocapture noundef readonly %send_buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_dl_state = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 23
  %0 = ptrtoint ptr %fw_dl_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_dl_state, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 3) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %available_sensors = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %available_sensors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %available_sensors, align 8
  %conv = zext i8 %sensor_type to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %inst)
  %cmp3 = icmp ult i8 %inst, -91
  %or.cond = and i1 %cmp3, %tobool.not
  br i1 %or.cond, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %conv) #11
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %8 = zext i8 %length to i16
  %conv14 = add nuw nsw i16 %8, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end12.cleanup_crit_edge, label %if.end.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %10 = zext i8 %length to i32
  %add.i = add nuw nsw i32 %10, 14
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3521) #12
  %buffer.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %buffer.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end17

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv14) #8
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %call7.i.i.i, align 8
  %options9.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %options9.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %options9.i, align 2
  %15 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %inst, ptr %call9.i.i.i, align 128
  %h.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 1
  %16 = ptrtoint ptr %h.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %12, ptr %h.sroa.5.0..sroa_idx.i, align 1
  %h.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 3
  %17 = ptrtoint ptr %h.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 256, ptr %h.sroa.7.0..sroa_idx.i, align 1
  %h.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 5
  %18 = ptrtoint ptr %h.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %h.sroa.9.0..sroa_idx.i, align 1
  %19 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %20, i32 12
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sensor_type, ptr %arrayidx.i, align 1
  %22 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i34 = getelementptr i8, ptr %22, i32 13
  %23 = call ptr @memcpy(ptr %arrayidx.i34, ptr %send_buf, i32 %10)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i) #8
  %24 = getelementptr inbounds i8, ptr %done.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 255, i32 52)
  %26 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #8
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i35 = icmp eq i16 %28, 0
  br i1 %tobool.not.i35, label %do.end.i, label %if.end24.i, !prof !86

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef null) #8
  br label %ssp_spi_sync.exit

if.end24.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %done.i, i32 noundef 1000) #8
  br label %ssp_spi_sync.exit

ssp_spi_sync.exit:                                ; preds = %if.end24.i, %do.end.i
  %retval.0.i36 = phi i32 [ -1, %do.end.i ], [ %call.i, %if.end24.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i) #8
  %29 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %30) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ssp_spi_sync.exit, %if.then6.i, %if.end12.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %retval.0.i36, %ssp_spi_sync.exit ], [ -5, %do.end8 ], [ -12, %if.then6.i ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_get_chipid(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i22.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3521, i32 noundef 13) #13
  %buffer.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i22.i, ptr %buffer.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i22.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %ssp_spi_sync.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

ssp_spi_sync.exit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %call7.i.i.i, align 8
  %options9.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %options9.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %options9.i, align 2
  %5 = ptrtoint ptr %call7.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %call7.i.i22.i, align 8
  %h.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 1
  %6 = ptrtoint ptr %h.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 256, ptr %h.sroa.5.0..sroa_idx.i, align 1
  %h.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 3
  %7 = ptrtoint ptr %h.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %h.sroa.7.0..sroa_idx.i, align 1
  %h.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 5
  %8 = ptrtoint ptr %h.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %h.sroa.9.0..sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i) #8
  %9 = getelementptr inbounds i8, ptr %done.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #8
  %call.i = call fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %done.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i) #8
  %12 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.i, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @kfree(ptr noundef %13) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %conv = zext i8 %15 to i32
  %spec.select = select i1 %cmp, i32 %call.i, i32 %conv
  br label %cleanup

cleanup:                                          ; preds = %ssp_spi_sync.exit, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6.i ], [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %ssp_spi_sync.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_set_magnetic_matrix(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sensorhub_info = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sensorhub_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensorhub_info, align 4
  %mag_length = getelementptr inbounds %struct.ssp_sensorhub_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mag_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mag_length, align 4
  %conv = trunc i32 %3 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %conv.i = and i32 %3, 65535
  %add.i = add nuw nsw i32 %conv.i, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3521) #12
  %buffer.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i, ptr %buffer.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end

if.then6.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i.i
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %call7.i.i.i, align 8
  %options9.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %options9.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %options9.i, align 2
  %9 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -3, ptr %call9.i.i.i, align 128
  %h.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 1
  %10 = ptrtoint ptr %h.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %6, ptr %h.sroa.5.0..sroa_idx.i, align 1
  %h.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 3
  %11 = ptrtoint ptr %h.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 256, ptr %h.sroa.7.0..sroa_idx.i, align 1
  %h.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call9.i.i.i, i32 5
  %12 = ptrtoint ptr %h.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %h.sroa.9.0..sroa_idx.i, align 1
  %13 = ptrtoint ptr %sensorhub_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sensorhub_info, align 4
  %mag_table = getelementptr inbounds %struct.ssp_sensorhub_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mag_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mag_table, align 4
  %mag_length3 = getelementptr inbounds %struct.ssp_sensorhub_info, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %mag_length3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mag_length3, align 4
  %19 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %20, i32 12
  %21 = call ptr @memcpy(ptr %arrayidx.i, ptr %16, i32 %18)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i) #8
  %22 = getelementptr inbounds i8, ptr %done.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 52)
  %24 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %22, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #8
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i13 = icmp eq i16 %26, 0
  br i1 %tobool.not.i13, label %do.end.i, label %if.end24.i, !prof !86

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef null) #8
  br label %ssp_spi_sync.exit

if.end24.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %done.i, i32 noundef 1000) #8
  br label %ssp_spi_sync.exit

ssp_spi_sync.exit:                                ; preds = %if.end24.i, %do.end.i
  %retval.0.i14 = phi i32 [ -1, %do.end.i ], [ %call.i, %if.end24.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i) #8
  %27 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %28) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ssp_spi_sync.exit, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i14, %ssp_spi_sync.exit ], [ -12, %if.then6.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_get_sensor_scanning_info(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i22.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3521, i32 noundef 16) #13
  %buffer.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i22.i, ptr %buffer.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i22.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %ssp_spi_sync.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

ssp_spi_sync.exit:                                ; preds = %if.end.i
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %call7.i.i.i, align 8
  %options9.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %options9.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %options9.i, align 2
  %5 = ptrtoint ptr %call7.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -12, ptr %call7.i.i22.i, align 8
  %h.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 1
  %6 = ptrtoint ptr %h.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 1024, ptr %h.sroa.5.0..sroa_idx.i, align 1
  %h.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 3
  %7 = ptrtoint ptr %h.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %h.sroa.7.0..sroa_idx.i, align 1
  %h.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 5
  %8 = ptrtoint ptr %h.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %h.sroa.9.0..sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i) #8
  %9 = getelementptr inbounds i8, ptr %done.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #8
  %call.i = call fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %done.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %ssp_spi_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i) #11
  br label %_exit

if.end3:                                          ; preds = %ssp_spi_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx.i, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %18) #11
  br label %_exit

_exit:                                            ; preds = %if.end3, %do.end
  %cpu_result.0 = phi i32 [ 0, %do.end ], [ %18, %if.end3 ]
  %21 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %22) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %_exit, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cpu_result.0, %_exit ], [ 0, %if.then6.i ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_get_firmware_rev(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i22.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3521, i32 noundef 16) #13
  %buffer.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i22.i, ptr %buffer.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i22.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %ssp_spi_sync.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

ssp_spi_sync.exit:                                ; preds = %if.end.i
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %call7.i.i.i, align 8
  %options9.i = getelementptr inbounds %struct.ssp_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %options9.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %options9.i, align 2
  %5 = ptrtoint ptr %call7.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -16, ptr %call7.i.i22.i, align 8
  %h.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 1
  %6 = ptrtoint ptr %h.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 1024, ptr %h.sroa.5.0..sroa_idx.i, align 1
  %h.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 3
  %7 = ptrtoint ptr %h.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %h.sroa.7.0..sroa_idx.i, align 1
  %h.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i22.i, i32 5
  %8 = ptrtoint ptr %h.sroa.9.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %h.sroa.9.0..sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i) #8
  %9 = getelementptr inbounds i8, ptr %done.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #8
  %call.i = call fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %done.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %ssp_spi_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %call.i) #11
  br label %_exit

if.end3:                                          ; preds = %ssp_spi_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx.i, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  br label %_exit

_exit:                                            ; preds = %if.end3, %do.end
  %ret.0 = phi i32 [ 99999, %do.end ], [ %18, %if.end3 ]
  %19 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %20) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %_exit, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %_exit ], [ 99999, %if.then6.i ], [ 99999, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_queue_ssp_refresh_task(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssp_do_transfer(ptr noundef %data, ptr noundef %msg, ptr noundef %done, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %shut_down = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %shut_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shut_down, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %done2 = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %done2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %done, ptr %done2, align 4
  %comm_lock = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %comm_lock, i32 noundef 0) #8
  %call = tail call fastcc i32 @ssp_check_lines(ptr noundef %data, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 128
  %buffer = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 5
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %9 = getelementptr inbounds i8, ptr %t.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end6.spi_write.exit_crit_edge

if.end6.spi_write.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end6.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8 = icmp slt i32 %call.i.i, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ap_mcu_gpiod = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 27
  %23 = ptrtoint ptr %ap_mcu_gpiod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ap_mcu_gpiod, align 16
  call void @gpiod_set_value_cansleep(ptr noundef %24, i32 noundef 1) #8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %spi_write.exit
  br i1 %cmp, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  %pending_lock = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %pending_lock, i32 noundef 0) #8
  %list = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2
  %pending_list = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 29
  %prev.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 29, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i75 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %pending_list) #8
  br i1 %call.i.i75, label %if.end.i.i, label %if.then14.list_add_tail.exit_crit_edge

if.then14.list_add_tail.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pending_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then14.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %pending_lock) #8
  br label %if.end16

if.end16:                                         ; preds = %list_add_tail.exit, %if.end12.if.end16_crit_edge
  %ap_mcu_gpiod.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 27
  %33 = ptrtoint ptr %ap_mcu_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ap_mcu_gpiod.i, align 16
  call void @gpiod_set_value_cansleep(ptr noundef %34, i32 noundef 1) #8
  %mcu_ap_gpiod.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 28
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end16
  %delay_cnt.0.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %35 = ptrtoint ptr %mcu_ap_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mcu_ap_gpiod.i, align 4
  %call.i = call i32 @gpiod_get_value_cansleep(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end27, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 3500, i32 noundef 2) #8
  %37 = ptrtoint ptr %shut_down to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %shut_down, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool4.not.i = icmp ne i8 %38, 0
  %inc.i = add nuw nsw i32 %delay_cnt.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %delay_cnt.0.i)
  %cmp6.i = icmp ugt i32 %delay_cnt.0.i, 500
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %if.then20, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then20:                                        ; preds = %while.body.i
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1) #11
  br i1 %cmp, label %if.then20.cleanup.sink.split_crit_edge, label %if.then22

if.then20.cleanup.sink.split_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.then20
  %pending_lock23 = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %pending_lock23, i32 noundef 0) #8
  %list24 = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2
  %call.i.i77 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list24) #8
  br i1 %call.i.i77, label %if.end.i.i78, label %if.then22.list_del.exit_crit_edge

if.then22.list_del.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i78:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %list24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %list24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i78, %if.then22.list_del.exit_crit_edge
  %47 = ptrtoint ptr %list24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %list24, align 4
  %prev.i79 = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i79, align 4
  call void @mutex_unlock(ptr noundef %pending_lock23) #8
  br label %cleanup.sink.split

if.end27:                                         ; preds = %while.cond.i
  call void @mutex_unlock(ptr noundef %comm_lock) #8
  %tobool30.not = icmp eq ptr %done, null
  %or.cond = or i1 %tobool30.not, %cmp
  br i1 %or.cond, label %if.end27.cleanup_crit_edge, label %if.else.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end27
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #8
  %call33 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %if.else.i
  %pending_lock37 = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %pending_lock37, i32 noundef 0) #8
  %list38 = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2
  %call.i.i80 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list38) #8
  br i1 %call.i.i80, label %if.end.i.i83, label %if.then36.list_del.exit85_crit_edge

if.then36.list_del.exit85_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit85

if.end.i.i83:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i81 = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i81, align 4
  %51 = ptrtoint ptr %list38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %list38, align 4
  %prev1.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i82, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit85

list_del.exit85:                                  ; preds = %if.end.i.i83, %if.then36.list_del.exit85_crit_edge
  %55 = ptrtoint ptr %list38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %list38, align 4
  %prev.i84 = getelementptr inbounds %struct.ssp_msg, ptr %msg, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i84, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_del.exit85, %list_del.exit, %if.then20.cleanup.sink.split_crit_edge, %if.then10, %if.end.cleanup.sink.split_crit_edge
  %pending_lock37.sink = phi ptr [ %pending_lock37, %list_del.exit85 ], [ %comm_lock, %if.then20.cleanup.sink.split_crit_edge ], [ %comm_lock, %list_del.exit ], [ %comm_lock, %if.end.cleanup.sink.split_crit_edge ], [ %comm_lock, %if.then10 ]
  %retval.0.ph = phi i32 [ -110, %list_del.exit85 ], [ -110, %if.then20.cleanup.sink.split_crit_edge ], [ -110, %list_del.exit ], [ %call, %if.end.cleanup.sink.split_crit_edge ], [ %call.i.i, %if.then10 ]
  call void @mutex_unlock(ptr noundef %pending_lock37.sink) #8
  %timeout_cnt = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 12
  %57 = ptrtoint ptr %timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timeout_cnt, align 4
  %inc44 = add i32 %58, 1
  store i32 %inc44, ptr %timeout_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssp_check_lines(ptr nocapture noundef readonly %data, i1 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_mcu_gpiod = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 27
  %0 = ptrtoint ptr %ap_mcu_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap_mcu_gpiod, align 16
  %conv = zext i1 %state to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %conv) #8
  %mcu_ap_gpiod = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 28
  %shut_down = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %delay_cnt.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %2 = ptrtoint ptr %mcu_ap_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu_ap_gpiod, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp eq i32 %call, %conv
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3500, i32 noundef 2) #8
  %4 = ptrtoint ptr %shut_down to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shut_down, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp ne i8 %5, 0
  %inc = add nuw nsw i32 %delay_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %delay_cnt.0)
  %cmp6 = icmp ugt i32 %delay_cnt.0, 500
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %conv) #11
  br i1 %state, label %do.end.cleanup_crit_edge, label %if.then11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ap_mcu_gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ap_mcu_gpiod, align 16
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then11 ], [ -110, %do.end.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 343, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ssp_irq_msg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ssp_irq_msg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 351, i32 3}
!10 = !{ptr @ssp_irq_msg._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ssp_irq_msg._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 392, i32 4}
!14 = !{ptr @ssp_irq_msg._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ssp_irq_msg._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 430, i32 4}
!18 = !{ptr @ssp_irq_msg._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ssp_irq_msg._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 441, i32 3}
!22 = !{ptr @ssp_irq_msg._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ssp_irq_msg._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 487, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ssp_send_instruction._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ssp_send_instruction._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 492, i32 3}
!31 = !{ptr @ssp_send_instruction._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ssp_send_instruction._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 565, i32 3}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ssp_get_sensor_scanning_info._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ssp_get_sensor_scanning_info._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 572, i32 2}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ssp_get_sensor_scanning_info._entry.24, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ssp_get_sensor_scanning_info._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 591, i32 3}
!45 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ssp_get_firmware_rev._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ssp_get_firmware_rev._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 280, i32 5}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ssp_parse_dataframe._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ssp_parse_dataframe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 295, i32 5}
!55 = !{ptr @ssp_parse_dataframe._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ssp_parse_dataframe._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 305, i32 5}
!59 = !{ptr @ssp_parse_dataframe._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ssp_parse_dataframe._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ssp_offset_map, !62, !"ssp_offset_map", i1 false, i1 false}
!62 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 43, i32 18}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 201, i32 3}
!65 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ssp_do_transfer._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ssp_do_transfer._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/common/ssp_sensors/ssp_spi.c", i32 164, i32 4}
!70 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ssp_check_lines._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ssp_check_lines._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 1, i32 2000}
