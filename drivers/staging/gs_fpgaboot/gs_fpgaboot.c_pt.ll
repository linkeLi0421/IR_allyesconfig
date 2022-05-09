; ModuleID = '/llk/IR_all_yes/drivers/staging/gs_fpgaboot/gs_fpgaboot.c_pt.bc'
source_filename = "../drivers/staging/gs_fpgaboot/gs_fpgaboot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.fpgaimage = type { i32, i32, ptr, [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_file = internal constant [13 x i8] c"gs_fpga.file\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@file = internal global { ptr, [28 x i8] } { ptr @.str.3, [28 x i8] zeroinitializer }, align 32
@__param_file = internal constant %struct.kernel_param { ptr @__param_str_file, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @file } }, section "__param", align 4
@__UNIQUE_ID_filetype223 = internal constant [28 x i8] c"gs_fpga.parmtype=file:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file224 = internal constant [45 x i8] c"gs_fpga.parm=file:Xilinx FPGA firmware file.\00", section ".modinfo", align 1
@firmware_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gs_fpgaboot_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016FPGA image download module removed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gs_fpgaboot_exit\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/gs_fpgaboot/gs_fpgaboot.c\00", [54 x i8] zeroinitializer }, align 32
@gs_fpgaboot_exit._entry_ptr = internal global ptr @gs_fpgaboot_exit._entry, section ".printk_index", align 4
@__initcall__kmod_gs_fpga__225_389_gs_fpgaboot_init6 = internal global ptr @gs_fpgaboot_init, section ".initcall6.init", align 4
@__exitcall_gs_fpgaboot_exit = internal global ptr @gs_fpgaboot_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author226 = internal constant [26 x i8] c"gs_fpga.author=Insop Song\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [50 x i8] c"gs_fpga.description=Xlinix FPGA firmware download\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [49 x i8] c"gs_fpga.file=drivers/staging/gs_fpgaboot/gs_fpga\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [20 x i8] c"gs_fpga.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xlinx_fpga_firmware.bit\00", [40 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016FPGA DOWNLOAD --->\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gs_fpgaboot_init\00", [47 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry_ptr = internal global ptr @gs_fpgaboot_init._entry, section ".printk_index", align 4
@gs_fpgaboot_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016FPGA image file name: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry_ptr.8 = internal global ptr @gs_fpgaboot_init._entry.6, section ".printk_index", align 4
@gs_fpgaboot_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013FPGA DRIVER INIT FAIL!!\0A\00", [37 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry_ptr.11 = internal global ptr @gs_fpgaboot_init._entry.9, section ".printk_index", align 4
@gs_fpgaboot_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013GPIO INIT FAIL!!\0A\00", [44 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry_ptr.14 = internal global ptr @gs_fpgaboot_init._entry.12, section ".printk_index", align 4
@gs_fpgaboot_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013FPGA DOWNLOAD FAIL!!\0A\00", [40 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry_ptr.17 = internal global ptr @gs_fpgaboot_init._entry.15, section ".printk_index", align 4
@gs_fpgaboot_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016FPGA DOWNLOAD DONE <---\0A\00", [37 x i8] zeroinitializer }, align 32
@gs_fpgaboot_init._entry_ptr.20 = internal global ptr @gs_fpgaboot_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fpgaboot\00", [23 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013gs_load_image error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gs_fpgaboot\00", [20 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry_ptr = internal global ptr @gs_fpgaboot._entry, section ".printk_index", align 4
@gs_fpgaboot._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013gs_read_image error\0A\00", [41 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry_ptr.26 = internal global ptr @gs_fpgaboot._entry.24, section ".printk_index", align 4
@gs_fpgaboot._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gs_set_download_method error\0A\00", [32 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry_ptr.29 = internal global ptr @gs_fpgaboot._entry.27, section ".printk_index", align 4
@gs_fpgaboot._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013gs_download_image error\0A\00", [37 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry_ptr.32 = internal global ptr @gs_fpgaboot._entry.30, section ".printk_index", align 4
@gs_fpgaboot._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013gs_release_image error\0A\00", [38 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry_ptr.35 = internal global ptr @gs_fpgaboot._entry.33, section ".printk_index", align 4
@gs_fpgaboot._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gs_fpgaboot._entry_ptr.37 = internal global ptr @gs_fpgaboot._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gs_load_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016load fpgaimage %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gs_load_image\00", [18 x i8] zeroinitializer }, align 32
@gs_load_image._entry_ptr = internal global ptr @gs_load_image._entry, section ".printk_index", align 4
@gs_load_image._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013firmware %s is missing, cannot continue.\0A\00", [52 x i8] zeroinitializer }, align 32
@gs_load_image._entry_ptr.42 = internal global ptr @gs_load_image._entry.40, section ".printk_index", align 4
@gs_read_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016image is bitstream format\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gs_read_image\00", [18 x i8] zeroinitializer }, align 32
@gs_read_image._entry_ptr = internal global ptr @gs_read_image._entry, section ".printk_index", align 4
@gs_read_image._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013unsupported fpga image format\0A\00", [63 x i8] zeroinitializer }, align 32
@gs_read_image._entry_ptr.47 = internal global ptr @gs_read_image._entry.45, section ".printk_index", align 4
@bits_magic = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\00\09\0F\F0\0F\F0\0F\F0\0F\F0\00\00\01", [19 x i8] zeroinitializer }, align 32
@readmagic_bitstream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013error: corrupted header\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"readmagic_bitstream\00", [44 x i8] zeroinitializer }, align 32
@readmagic_bitstream._entry_ptr = internal global ptr @readmagic_bitstream._entry, section ".printk_index", align 4
@readmagic_bitstream._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016bitstream file magic number Ok\0A\00", [62 x i8] zeroinitializer }, align 32
@readmagic_bitstream._entry_ptr.52 = internal global ptr @readmagic_bitstream._entry.50, section ".printk_index", align 4
@readinfo_bitstream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013error: readinfo buffer too small\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"readinfo_bitstream\00", [45 x i8] zeroinitializer }, align 32
@readinfo_bitstream._entry_ptr = internal global ptr @readinfo_bitstream._entry, section ".printk_index", align 4
@readlength_bitstream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013error: length section is not 'e', but %c\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"readlength_bitstream\00", [43 x i8] zeroinitializer }, align 32
@readlength_bitstream._entry_ptr = internal global ptr @readlength_bitstream._entry, section ".printk_index", align 4
@gs_print_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016file: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gs_print_header\00", [16 x i8] zeroinitializer }, align 32
@gs_print_header._entry_ptr = internal global ptr @gs_print_header._entry, section ".printk_index", align 4
@gs_print_header._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016part: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@gs_print_header._entry_ptr.61 = internal global ptr @gs_print_header._entry.59, section ".printk_index", align 4
@gs_print_header._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016date: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@gs_print_header._entry_ptr.64 = internal global ptr @gs_print_header._entry.62, section ".printk_index", align 4
@gs_print_header._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016time: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@gs_print_header._entry_ptr.67 = internal global ptr @gs_print_header._entry.65, section ".printk_index", align 4
@gs_print_header._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016lendata: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@gs_print_header._entry_ptr.70 = internal global ptr @gs_print_header._entry.68, section ".printk_index", align 4
@gs_set_download_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016set program method\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gs_set_download_method\00", [41 x i8] zeroinitializer }, align 32
@gs_set_download_method._entry_ptr = internal global ptr @gs_set_download_method._entry, section ".printk_index", align 4
@gs_set_download_method._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016systemmap program method\0A\00", [36 x i8] zeroinitializer }, align 32
@gs_set_download_method._entry_ptr.75 = internal global ptr @gs_set_download_method._entry.73, section ".printk_index", align 4
@gs_download_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013unsupported program bus width %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gs_download_image\00", [46 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr = internal global ptr @gs_download_image._entry, section ".printk_index", align 4
@gs_download_image._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016device init done\0A\00", [44 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr.80 = internal global ptr @gs_download_image._entry.78, section ".printk_index", align 4
@gs_download_image._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016program done\0A\00", [16 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr.83 = internal global ptr @gs_download_image._entry.81, section ".printk_index", align 4
@gs_download_image._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013init_b 0\0A\00", [20 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr.86 = internal global ptr @gs_download_image._entry.84, section ".printk_index", align 4
@gs_download_image._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013init_B %d\0A\00", [19 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr.89 = internal global ptr @gs_download_image._entry.87, section ".printk_index", align 4
@gs_download_image._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.77, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013fpga download fail\0A\00", [42 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr.92 = internal global ptr @gs_download_image._entry.90, section ".printk_index", align 4
@gs_download_image._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.77, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016download fpgaimage\0A\00", [42 x i8] zeroinitializer }, align 32
@gs_download_image._entry_ptr.95 = internal global ptr @gs_download_image._entry.93, section ".printk_index", align 4
@gs_release_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016release fpgaimage\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gs_release_image\00", [47 x i8] zeroinitializer }, align 32
@gs_release_image._entry_ptr = internal global ptr @gs_release_image._entry, section ".printk_index", align 4
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 31, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"firmware_pdev\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 29, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 386, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 31, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 351, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 353, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 357, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 363, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 369, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 373, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 290, i32 50 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 306, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 312, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 318, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 324, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 330, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 340, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 189, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 193, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 170, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 176, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [11 x i8] c"bits_magic\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 24, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 99, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 102, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 54, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 76, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 119, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 120, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 121, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 122, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 123, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 279, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 283, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 214, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 233, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 238, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 242, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 248, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 254, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 258, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [45 x i8] c"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 269, i32 2 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_filetype223, ptr @__UNIQUE_ID_license229, ptr @__exitcall_gs_fpgaboot_exit, ptr @__initcall__kmod_gs_fpga__225_389_gs_fpgaboot_init6, ptr @__param_file, ptr @gs_download_image._entry, ptr @gs_download_image._entry.78, ptr @gs_download_image._entry.81, ptr @gs_download_image._entry.84, ptr @gs_download_image._entry.87, ptr @gs_download_image._entry.90, ptr @gs_download_image._entry.93, ptr @gs_download_image._entry_ptr, ptr @gs_download_image._entry_ptr.80, ptr @gs_download_image._entry_ptr.83, ptr @gs_download_image._entry_ptr.86, ptr @gs_download_image._entry_ptr.89, ptr @gs_download_image._entry_ptr.92, ptr @gs_download_image._entry_ptr.95, ptr @gs_fpgaboot._entry, ptr @gs_fpgaboot._entry.24, ptr @gs_fpgaboot._entry.27, ptr @gs_fpgaboot._entry.30, ptr @gs_fpgaboot._entry.33, ptr @gs_fpgaboot._entry.36, ptr @gs_fpgaboot._entry_ptr, ptr @gs_fpgaboot._entry_ptr.26, ptr @gs_fpgaboot._entry_ptr.29, ptr @gs_fpgaboot._entry_ptr.32, ptr @gs_fpgaboot._entry_ptr.35, ptr @gs_fpgaboot._entry_ptr.37, ptr @gs_fpgaboot_exit, ptr @gs_fpgaboot_exit._entry, ptr @gs_fpgaboot_exit._entry_ptr, ptr @gs_fpgaboot_init._entry, ptr @gs_fpgaboot_init._entry.12, ptr @gs_fpgaboot_init._entry.15, ptr @gs_fpgaboot_init._entry.18, ptr @gs_fpgaboot_init._entry.6, ptr @gs_fpgaboot_init._entry.9, ptr @gs_fpgaboot_init._entry_ptr, ptr @gs_fpgaboot_init._entry_ptr.11, ptr @gs_fpgaboot_init._entry_ptr.14, ptr @gs_fpgaboot_init._entry_ptr.17, ptr @gs_fpgaboot_init._entry_ptr.20, ptr @gs_fpgaboot_init._entry_ptr.8, ptr @gs_load_image._entry, ptr @gs_load_image._entry.40, ptr @gs_load_image._entry_ptr, ptr @gs_load_image._entry_ptr.42, ptr @gs_print_header._entry, ptr @gs_print_header._entry.59, ptr @gs_print_header._entry.62, ptr @gs_print_header._entry.65, ptr @gs_print_header._entry.68, ptr @gs_print_header._entry_ptr, ptr @gs_print_header._entry_ptr.61, ptr @gs_print_header._entry_ptr.64, ptr @gs_print_header._entry_ptr.67, ptr @gs_print_header._entry_ptr.70, ptr @gs_read_image._entry, ptr @gs_read_image._entry.45, ptr @gs_read_image._entry_ptr, ptr @gs_read_image._entry_ptr.47, ptr @gs_release_image._entry, ptr @gs_release_image._entry_ptr, ptr @gs_set_download_method._entry, ptr @gs_set_download_method._entry.73, ptr @gs_set_download_method._entry_ptr, ptr @gs_set_download_method._entry_ptr.75, ptr @readinfo_bitstream._entry, ptr @readinfo_bitstream._entry_ptr, ptr @readlength_bitstream._entry, ptr @readlength_bitstream._entry_ptr, ptr @readmagic_bitstream._entry, ptr @readmagic_bitstream._entry.50, ptr @readmagic_bitstream._entry_ptr, ptr @readmagic_bitstream._entry_ptr.52, ptr @file, ptr @firmware_pdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @bits_magic, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_fpgaboot._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_load_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_load_image._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_read_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_read_image._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_magic to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readmagic_bitstream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readmagic_bitstream._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readinfo_bitstream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readlength_bitstream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_print_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_print_header._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_print_header._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_print_header._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_print_header._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_set_download_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_set_download_method._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_download_image._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_release_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gs_fpgaboot_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @firmware_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_fpgaboot_init() #0 section ".init.text" align 64 {
entry:
  %buf.i.i.i.i = alloca [13 x i8], align 1
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  %0 = load ptr, ptr @file, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #6
  %1 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 48)
  %3 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.21, ptr %name2.i.i.i, align 4
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %properties.i.i.i, align 8
  %9 = call ptr @memset(ptr %res4.i.i.i, i32 0, i32 16)
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #6
  store ptr %call.i.i.i, ptr @firmware_pdev, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i.i.i to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = call i32 @xl_init_io() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %if.end.errout_crit_edge

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.end20:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 1044) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end20.errout_crit_edge, label %if.end.i

if.end20.errout_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.end.i:                                         ; preds = %if.end20
  %12 = load ptr, ptr @file, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %12) #9
  %fw_entry.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 2
  %13 = load ptr, ptr @firmware_pdev, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call1.i.i = call i32 @request_firmware(ptr noundef %fw_entry.i.i, ptr noundef %12, ptr noundef %dev.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %12) #9
  br label %gs_fpgaboot.exit

if.end5.i:                                        ; preds = %if.end.i
  %call1.i66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  %14 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_entry.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf.i.i.i.i) #6
  %18 = call ptr @memcpy(ptr %buf.i.i.i.i, ptr %17, i32 13)
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %buf.i.i.i.i, ptr noundef nonnull dereferenceable(13) @bits_magic, i32 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i, label %readmagic_bitstream.exit.i.i.i

readmagic_bitstream.exit.i.i.i:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf.i.i.i.i) #6
  br label %err_out2.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  %call7.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf.i.i.i.i) #6
  %add.ptr.i1.i.i.i.i = getelementptr i8, ptr %17, i32 14
  %19 = ptrtoint ptr %add.ptr.i1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %tbuf.sroa.0.0.copyload.i.i.i.i = load i8, ptr %add.ptr.i1.i.i.i.i, align 1
  %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i.i.i.i = getelementptr i8, ptr %17, i32 15
  %20 = ptrtoint ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %tbuf.sroa.6.0.copyload.i.i.i.i = load i8, ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i.i.i.i, align 1
  %tbuf.sroa.6.0.insert.ext.i.i.i.i = zext i8 %tbuf.sroa.6.0.copyload.i.i.i.i to i16
  %tbuf.sroa.0.0.insert.ext.i.i.i.i = zext i8 %tbuf.sroa.0.0.copyload.i.i.i.i to i16
  %tbuf.sroa.0.0.insert.shift.i.i.i.i = shl nuw i16 %tbuf.sroa.0.0.insert.ext.i.i.i.i, 8
  %tbuf.sroa.0.0.insert.insert.i.i.i.i = or i16 %tbuf.sroa.0.0.insert.shift.i.i.i.i, %tbuf.sroa.6.0.insert.ext.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %tbuf.sroa.0.0.insert.insert.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i16 %tbuf.sroa.0.0.insert.insert.i.i.i.i, 255
  br i1 %cmp.i.i.i.i, label %readinfo_bitstream.exit.i.i.i, label %if.end4.i.i.i

readinfo_bitstream.exit.i.i.i:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %err_out2.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %filename.i.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 3
  %conv.i.i.i.i = zext i16 %tbuf.sroa.0.0.insert.insert.i.i.i.i to i32
  %add.ptr.i3.i.i.i.i = getelementptr i8, ptr %17, i32 16
  %21 = call ptr @memcpy(ptr %filename.i.i.i, ptr %add.ptr.i3.i.i.i.i, i32 %conv.i.i.i.i)
  %arrayidx.i.i.i.i = getelementptr i8, ptr %filename.i.i.i, i32 %conv.i.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i.i.i.i, align 1
  %add.i.i52.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 17
  %add.ptr.i1.i53.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i52.i.i.i
  %23 = ptrtoint ptr %add.ptr.i1.i53.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %tbuf.sroa.0.0.copyload.i54.i.i.i = load i8, ptr %add.ptr.i1.i53.i.i.i, align 1
  %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i55.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i1.i53.i.i.i, i32 1
  %24 = ptrtoint ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i55.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %tbuf.sroa.6.0.copyload.i56.i.i.i = load i8, ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i55.i.i.i, align 1
  %tbuf.sroa.6.0.insert.ext.i58.i.i.i = zext i8 %tbuf.sroa.6.0.copyload.i56.i.i.i to i16
  %tbuf.sroa.0.0.insert.ext.i59.i.i.i = zext i8 %tbuf.sroa.0.0.copyload.i54.i.i.i to i16
  %tbuf.sroa.0.0.insert.shift.i60.i.i.i = shl nuw i16 %tbuf.sroa.0.0.insert.ext.i59.i.i.i, 8
  %tbuf.sroa.0.0.insert.insert.i61.i.i.i = or i16 %tbuf.sroa.0.0.insert.shift.i60.i.i.i, %tbuf.sroa.6.0.insert.ext.i58.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %tbuf.sroa.0.0.insert.insert.i61.i.i.i)
  %cmp.i62.i.i.i = icmp ugt i16 %tbuf.sroa.0.0.insert.insert.i61.i.i.i, 255
  br i1 %cmp.i62.i.i.i, label %readinfo_bitstream.exit71.i.i.i, label %if.end9.i.i.i

readinfo_bitstream.exit71.i.i.i:                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i63.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %err_out2.i

if.end9.i.i.i:                                    ; preds = %if.end4.i.i.i
  %add.i2.i57.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 19
  %part.i.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 4
  %conv.i65.i.i.i = zext i16 %tbuf.sroa.0.0.insert.insert.i61.i.i.i to i32
  %add.ptr.i3.i66.i.i.i = getelementptr i8, ptr %17, i32 %add.i2.i57.i.i.i
  %25 = call ptr @memcpy(ptr %part.i.i.i, ptr %add.ptr.i3.i66.i.i.i, i32 %conv.i65.i.i.i)
  %add.i4.i67.i.i.i = add nuw nsw i32 %add.i2.i57.i.i.i, %conv.i65.i.i.i
  %arrayidx.i68.i.i.i = getelementptr i8, ptr %part.i.i.i, i32 %conv.i65.i.i.i
  %26 = ptrtoint ptr %arrayidx.i68.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.i68.i.i.i, align 1
  %add.i.i72.i.i.i = add nuw nsw i32 %add.i4.i67.i.i.i, 1
  %add.ptr.i1.i73.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i72.i.i.i
  %27 = ptrtoint ptr %add.ptr.i1.i73.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %tbuf.sroa.0.0.copyload.i74.i.i.i = load i8, ptr %add.ptr.i1.i73.i.i.i, align 1
  %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i75.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i1.i73.i.i.i, i32 1
  %28 = ptrtoint ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i75.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %tbuf.sroa.6.0.copyload.i76.i.i.i = load i8, ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i75.i.i.i, align 1
  %tbuf.sroa.6.0.insert.ext.i78.i.i.i = zext i8 %tbuf.sroa.6.0.copyload.i76.i.i.i to i16
  %tbuf.sroa.0.0.insert.ext.i79.i.i.i = zext i8 %tbuf.sroa.0.0.copyload.i74.i.i.i to i16
  %tbuf.sroa.0.0.insert.shift.i80.i.i.i = shl nuw i16 %tbuf.sroa.0.0.insert.ext.i79.i.i.i, 8
  %tbuf.sroa.0.0.insert.insert.i81.i.i.i = or i16 %tbuf.sroa.0.0.insert.shift.i80.i.i.i, %tbuf.sroa.6.0.insert.ext.i78.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %tbuf.sroa.0.0.insert.insert.i81.i.i.i)
  %cmp.i82.i.i.i = icmp ugt i16 %tbuf.sroa.0.0.insert.insert.i81.i.i.i, 255
  br i1 %cmp.i82.i.i.i, label %readinfo_bitstream.exit91.i.i.i, label %if.end14.i.i.i

readinfo_bitstream.exit91.i.i.i:                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i83.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %err_out2.i

if.end14.i.i.i:                                   ; preds = %if.end9.i.i.i
  %add.i2.i77.i.i.i = add nuw nsw i32 %add.i4.i67.i.i.i, 3
  %date.i.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 5
  %conv.i85.i.i.i = zext i16 %tbuf.sroa.0.0.insert.insert.i81.i.i.i to i32
  %add.ptr.i3.i86.i.i.i = getelementptr i8, ptr %17, i32 %add.i2.i77.i.i.i
  %29 = call ptr @memcpy(ptr %date.i.i.i, ptr %add.ptr.i3.i86.i.i.i, i32 %conv.i85.i.i.i)
  %add.i4.i87.i.i.i = add nuw nsw i32 %add.i2.i77.i.i.i, %conv.i85.i.i.i
  %arrayidx.i88.i.i.i = getelementptr i8, ptr %date.i.i.i, i32 %conv.i85.i.i.i
  %30 = ptrtoint ptr %arrayidx.i88.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx.i88.i.i.i, align 1
  %add.i.i19.i.i = add nuw nsw i32 %add.i4.i87.i.i.i, 1
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i19.i.i
  %31 = ptrtoint ptr %add.ptr.i1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %tbuf.sroa.0.0.copyload.i20.i.i = load i8, ptr %add.ptr.i1.i.i.i, align 1
  %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i1.i.i.i, i32 1
  %32 = ptrtoint ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %tbuf.sroa.6.0.copyload.i.i.i = load i8, ptr %tbuf.sroa.6.0.add.ptr.i1.sroa_idx.i.i.i, align 1
  %tbuf.sroa.6.0.insert.ext.i.i.i = zext i8 %tbuf.sroa.6.0.copyload.i.i.i to i16
  %tbuf.sroa.0.0.insert.ext.i21.i.i = zext i8 %tbuf.sroa.0.0.copyload.i20.i.i to i16
  %tbuf.sroa.0.0.insert.shift.i22.i.i = shl nuw i16 %tbuf.sroa.0.0.insert.ext.i21.i.i, 8
  %tbuf.sroa.0.0.insert.insert.i23.i.i = or i16 %tbuf.sroa.0.0.insert.shift.i22.i.i, %tbuf.sroa.6.0.insert.ext.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %tbuf.sroa.0.0.insert.insert.i23.i.i)
  %cmp.i.i.i39 = icmp ugt i16 %tbuf.sroa.0.0.insert.insert.i23.i.i, 255
  br i1 %cmp.i.i.i39, label %readinfo_bitstream.exit.i.i, label %if.end19.i.i.i

readinfo_bitstream.exit.i.i:                      ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %err_out2.i

if.end19.i.i.i:                                   ; preds = %if.end14.i.i.i
  %add.i2.i.i.i = add nuw nsw i32 %add.i4.i87.i.i.i, 3
  %time.i.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 6
  %conv.i25.i.i = zext i16 %tbuf.sroa.0.0.insert.insert.i23.i.i to i32
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %17, i32 %add.i2.i.i.i
  %33 = call ptr @memcpy(ptr %time.i.i.i, ptr %add.ptr.i3.i.i.i, i32 %conv.i25.i.i)
  %add.i4.i.i.i = add nuw nsw i32 %add.i2.i.i.i, %conv.i25.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %time.i.i.i, i32 %conv.i25.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 %add.i4.i.i.i
  %35 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %tbuf.sroa.0.0.copyload12.i.i.i = load i8, ptr %add.ptr.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %tbuf.sroa.0.0.copyload12.i.i.i)
  %cmp.not.i.i.i = icmp eq i8 %tbuf.sroa.0.0.copyload12.i.i.i, 101
  br i1 %cmp.not.i.i.i, label %if.end14.i, label %readlength_bitstream.exit.i.i

readlength_bitstream.exit.i.i:                    ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i8 %tbuf.sroa.0.0.copyload12.i.i.i to i32
  %call.i16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv.i.i.i) #9
  br label %err_out2.i

if.end14.i:                                       ; preds = %if.end19.i.i.i
  %add.i.i.i.i = add nuw nsw i32 %add.i4.i.i.i, 1
  %lendata.i.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 7
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i.i.i
  %36 = ptrtoint ptr %add.ptr.i9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %tbuf.sroa.0.0.copyload.i.i.i = load i8, ptr %add.ptr.i9.i.i.i, align 1
  %tbuf.sroa.7.0.add.ptr.i9.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i9.i.i.i, i32 1
  %37 = ptrtoint ptr %tbuf.sroa.7.0.add.ptr.i9.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %tbuf.sroa.7.0.copyload.i.i.i = load i8, ptr %tbuf.sroa.7.0.add.ptr.i9.sroa_idx.i.i.i, align 1
  %tbuf.sroa.8.0.add.ptr.i9.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i9.i.i.i, i32 2
  %38 = ptrtoint ptr %tbuf.sroa.8.0.add.ptr.i9.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %tbuf.sroa.8.0.copyload.i.i.i = load i8, ptr %tbuf.sroa.8.0.add.ptr.i9.sroa_idx.i.i.i, align 1
  %tbuf.sroa.9.0.add.ptr.i9.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i9.i.i.i, i32 3
  %39 = ptrtoint ptr %tbuf.sroa.9.0.add.ptr.i9.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %tbuf.sroa.9.0.copyload.i.i.i = load i8, ptr %tbuf.sroa.9.0.add.ptr.i9.sroa_idx.i.i.i, align 1
  %add.i10.i.i.i = add nuw nsw i32 %add.i4.i.i.i, 5
  %tbuf.sroa.9.0.insert.ext.i.i.i = zext i8 %tbuf.sroa.9.0.copyload.i.i.i to i32
  %tbuf.sroa.8.0.insert.ext.i.i.i = zext i8 %tbuf.sroa.8.0.copyload.i.i.i to i32
  %tbuf.sroa.8.0.insert.shift.i.i.i = shl nuw nsw i32 %tbuf.sroa.8.0.insert.ext.i.i.i, 8
  %tbuf.sroa.7.0.insert.ext.i.i.i = zext i8 %tbuf.sroa.7.0.copyload.i.i.i to i32
  %tbuf.sroa.7.0.insert.shift.i.i.i = shl nuw nsw i32 %tbuf.sroa.7.0.insert.ext.i.i.i, 16
  %tbuf.sroa.0.0.insert.ext.i.i.i = zext i8 %tbuf.sroa.0.0.copyload.i.i.i to i32
  %tbuf.sroa.0.0.insert.shift.i.i.i = shl nuw i32 %tbuf.sroa.0.0.insert.ext.i.i.i, 24
  %tbuf.sroa.8.0.insert.insert.i.i.i = or i32 %tbuf.sroa.7.0.insert.shift.i.i.i, %tbuf.sroa.0.0.insert.shift.i.i.i
  %tbuf.sroa.7.0.insert.insert.i.i.i = or i32 %tbuf.sroa.8.0.insert.insert.i.i.i, %tbuf.sroa.9.0.insert.ext.i.i.i
  %tbuf.sroa.0.0.insert.insert.i.i.i = or i32 %tbuf.sroa.7.0.insert.insert.i.i.i, %tbuf.sroa.8.0.insert.shift.i.i.i
  %40 = ptrtoint ptr %lendata.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %tbuf.sroa.0.0.insert.insert.i.i.i, ptr %lendata.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %add.i10.i.i.i
  %fpgadata.i.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %fpgadata.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i.i, ptr %fpgadata.i.i.i, align 8
  %call.i.i.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %filename.i.i.i) #9
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %part.i.i.i) #9
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %date.i.i.i) #9
  %call15.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %time.i.i.i) #9
  %42 = ptrtoint ptr %lendata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lendata.i.i.i, align 4
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %43) #9
  %call.i67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #9
  %dmethod.i.i = getelementptr inbounds %struct.fpgaimage, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %dmethod.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %dmethod.i.i, align 4
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #9
  %45 = ptrtoint ptr %fpgadata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fpgadata.i.i.i, align 8
  %47 = ptrtoint ptr %lendata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lendata.i.i.i, align 4
  %call.i68.i = call i32 @xl_supported_prog_bus_width(i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool.not.i.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 2) #9
  br label %err_out2.i

if.end.i.i:                                       ; preds = %if.end14.i
  call void @xl_program_b(i32 noundef 1) #6
  call void @xl_rdwr_b(i32 noundef 0) #6
  call void @xl_csi_b(i32 noundef 0) #6
  call void @xl_program_b(i32 noundef 0) #6
  call void @msleep(i32 noundef 20) #6
  call void @xl_program_b(i32 noundef 1) #6
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i.i
  %call2.i.i = call i32 @xl_get_init_b() #6
  %cmp.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %do.end5.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

do.end5.i.i:                                      ; preds = %while.cond.i.i
  %call7.i70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp82.i.i = icmp sgt i32 %48, 0
  br i1 %cmp82.i.i, label %do.end5.i.i.for.body.i.i_crit_edge, label %do.end5.i.i.do.end11.i.i_crit_edge

do.end5.i.i.do.end11.i.i_crit_edge:               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i.i

do.end5.i.i.for.body.i.i_crit_edge:               ; preds = %do.end5.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end5.i.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.end5.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %i.03.i.i
  call void @xl_shift_bytes_out(i32 noundef 2, ptr noundef %add.ptr.i.i) #6
  %add.i.i = add i32 %i.03.i.i, 2
  %cmp8.i.i = icmp slt i32 %add.i.i, %48
  br i1 %cmp8.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.do.end11.i.i_crit_edge

for.body.i.i.do.end11.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

do.end11.i.i:                                     ; preds = %for.body.i.i.do.end11.i.i_crit_edge, %do.end5.i.i.do.end11.i.i_crit_edge
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #9
  %call14.i.i = call i32 @xl_get_init_b() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %do.end19.i.i, label %do.end11.i.i.while.cond23.i.i_crit_edge

do.end11.i.i.while.cond23.i.i_crit_edge:          ; preds = %do.end11.i.i
  br label %while.cond23.i.i

do.end19.i.i:                                     ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #9
  br label %err_out2.i

while.cond23.i.i:                                 ; preds = %while.body26.i.i.while.cond23.i.i_crit_edge, %do.end11.i.i.while.cond23.i.i_crit_edge
  %cnt.0.i.i = phi i32 [ %inc.i.i, %while.body26.i.i.while.cond23.i.i_crit_edge ], [ 0, %do.end11.i.i.while.cond23.i.i_crit_edge ]
  %call24.i.i = call i32 @xl_get_done_b() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp25.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %cmp25.i.i, label %while.body26.i.i, label %while.end36.i.i

while.body26.i.i:                                 ; preds = %while.cond23.i.i
  %inc.i.i = add nuw nsw i32 %cnt.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 10002
  br i1 %exitcond.i.i, label %while.end36.thread.i.i, label %while.body26.i.i.while.cond23.i.i_crit_edge

while.body26.i.i.while.cond23.i.i_crit_edge:      ; preds = %while.body26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond23.i.i

while.end36.thread.i.i:                           ; preds = %while.body26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i.i = call i32 @xl_get_init_b() #6
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %call33.i.i) #9
  br label %do.end41.i.i

while.end36.i.i:                                  ; preds = %while.cond23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %cnt.0.i.i)
  %cmp37.i.i = icmp ugt i32 %cnt.0.i.i, 10000
  br i1 %cmp37.i.i, label %while.end36.i.i.do.end41.i.i_crit_edge, label %if.end32.i

while.end36.i.i.do.end41.i.i_crit_edge:           ; preds = %while.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41.i.i

do.end41.i.i:                                     ; preds = %while.end36.i.i.do.end41.i.i_crit_edge, %while.end36.thread.i.i
  %call43.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #9
  br label %err_out2.i

if.end32.i:                                       ; preds = %while.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #9
  call void @xl_shift_cclk(i32 noundef 8) #6
  %49 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw_entry.i.i, align 8
  call void @release_firmware(ptr noundef %50) #6
  br label %gs_fpgaboot.exit

err_out2.i:                                       ; preds = %do.end41.i.i, %do.end19.i.i, %do.end.i.i, %readlength_bitstream.exit.i.i, %readinfo_bitstream.exit.i.i, %readinfo_bitstream.exit91.i.i.i, %readinfo_bitstream.exit71.i.i.i, %readinfo_bitstream.exit.i.i.i, %readmagic_bitstream.exit.i.i.i
  %.str.31.sink.i = phi ptr [ @.str.25, %readmagic_bitstream.exit.i.i.i ], [ @.str.25, %readinfo_bitstream.exit.i.i.i ], [ @.str.25, %readinfo_bitstream.exit71.i.i.i ], [ @.str.25, %readinfo_bitstream.exit91.i.i.i ], [ @.str.25, %readinfo_bitstream.exit.i.i ], [ @.str.25, %readlength_bitstream.exit.i.i ], [ @.str.31, %do.end19.i.i ], [ @.str.31, %do.end41.i.i ], [ @.str.31, %do.end.i.i ]
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink.i) #9
  %51 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw_entry.i.i, align 8
  call void @release_firmware(ptr noundef %52) #6
  br label %gs_fpgaboot.exit

gs_fpgaboot.exit:                                 ; preds = %err_out2.i, %if.end32.i, %do.end.i
  %.str.96.sink.sink.i = phi ptr [ @.str.96, %if.end32.i ], [ @.str.96, %err_out2.i ], [ @.str.22, %do.end.i ]
  %retval.0.ph.i = phi i32 [ 0, %if.end32.i ], [ 0, %err_out2.i ], [ %call1.i.i, %do.end.i ]
  %call.i75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.96.sink.sink.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %tobool22.not = icmp eq i32 %retval.0.ph.i, 0
  br i1 %tobool22.not, label %do.end32, label %gs_fpgaboot.exit.errout_crit_edge

gs_fpgaboot.exit.errout_crit_edge:                ; preds = %gs_fpgaboot.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

do.end32:                                         ; preds = %gs_fpgaboot.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %cleanup

errout:                                           ; preds = %gs_fpgaboot.exit.errout_crit_edge, %if.end20.errout_crit_edge, %if.end.errout_crit_edge
  %.str.16.sink = phi ptr [ @.str.13, %if.end.errout_crit_edge ], [ @.str.16, %if.end20.errout_crit_edge ], [ @.str.16, %gs_fpgaboot.exit.errout_crit_edge ]
  %err.0 = phi i32 [ %call12, %if.end.errout_crit_edge ], [ -12, %if.end20.errout_crit_edge ], [ %retval.0.ph.i, %gs_fpgaboot.exit.errout_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #9
  %53 = load ptr, ptr @firmware_pdev, align 4
  call void @platform_device_unregister(ptr noundef %53) #6
  br label %cleanup

cleanup:                                          ; preds = %errout, %do.end32, %do.end9
  %retval.0 = phi i32 [ %10, %do.end9 ], [ %err.0, %errout ], [ 0, %do.end32 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xl_init_io() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xl_supported_prog_bus_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xl_program_b(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xl_rdwr_b(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xl_csi_b(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xl_get_init_b() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xl_shift_bytes_out(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xl_get_done_b() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xl_shift_cclk(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__param_file, !1, !"__param_file", i1 false, i1 false}
!1 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_filetype223, !1, !"__UNIQUE_ID_filetype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 33, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 386, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gs_fpgaboot_exit._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @gs_fpgaboot_exit._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_gs_fpga__225_389_gs_fpgaboot_init6, !12, !"__initcall__kmod_gs_fpga__225_389_gs_fpgaboot_init6", i1 false, i1 false}
!12 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 389, i32 1}
!13 = !{ptr @__exitcall_gs_fpgaboot_exit, !14, !"__exitcall_gs_fpgaboot_exit", i1 false, i1 false}
!14 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 390, i32 1}
!15 = !{ptr @__UNIQUE_ID_author226, !16, !"__UNIQUE_ID_author226", i1 false, i1 false}
!16 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 392, i32 1}
!17 = !{ptr @__UNIQUE_ID_description227, !18, !"__UNIQUE_ID_description227", i1 false, i1 false}
!18 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 393, i32 1}
!19 = !{ptr @__UNIQUE_ID_file228, !20, !"__UNIQUE_ID_file228", i1 false, i1 false}
!20 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 394, i32 1}
!21 = !{ptr @__UNIQUE_ID_license229, !20, !"__UNIQUE_ID_license229", i1 false, i1 false}
!22 = !{ptr @firmware_pdev, !23, !"firmware_pdev", i1 false, i1 false}
!23 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 29, i32 32}
!24 = !{ptr @__param_str_file, !1, !"__param_str_file", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 31, i32 21}
!27 = !{ptr @file, !28, !"file", i1 false, i1 false}
!28 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 31, i32 14}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 351, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gs_fpgaboot_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @gs_fpgaboot_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 353, i32 2}
!36 = !{ptr @gs_fpgaboot_init._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gs_fpgaboot_init._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 357, i32 3}
!40 = !{ptr @gs_fpgaboot_init._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @gs_fpgaboot_init._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 363, i32 3}
!44 = !{ptr @gs_fpgaboot_init._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gs_fpgaboot_init._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 369, i32 3}
!48 = !{ptr @gs_fpgaboot_init._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gs_fpgaboot_init._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 373, i32 2}
!52 = !{ptr @gs_fpgaboot_init._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gs_fpgaboot_init._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 290, i32 50}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 306, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @gs_fpgaboot._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @gs_fpgaboot._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 312, i32 3}
!63 = !{ptr @gs_fpgaboot._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @gs_fpgaboot._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 318, i32 3}
!67 = !{ptr @gs_fpgaboot._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gs_fpgaboot._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 324, i32 3}
!71 = !{ptr @gs_fpgaboot._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gs_fpgaboot._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 330, i32 3}
!75 = !{ptr @gs_fpgaboot._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @gs_fpgaboot._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @gs_fpgaboot._entry.36, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 340, i32 3}
!79 = !{ptr @gs_fpgaboot._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 189, i32 2}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gs_load_image._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @gs_load_image._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 193, i32 3}
!87 = !{ptr @gs_load_image._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @gs_load_image._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 170, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @gs_read_image._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @gs_read_image._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 176, i32 3}
!96 = !{ptr @gs_read_image._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @gs_read_image._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 99, i32 3}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @readmagic_bitstream._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @readmagic_bitstream._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 102, i32 2}
!105 = !{ptr @readmagic_bitstream._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @readmagic_bitstream._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @bits_magic, !108, !"bits_magic", i1 false, i1 false}
!108 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 24, i32 11}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 54, i32 3}
!111 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @readinfo_bitstream._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @readinfo_bitstream._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 76, i32 3}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @readlength_bitstream._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @readlength_bitstream._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 119, i32 2}
!121 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @gs_print_header._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @gs_print_header._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 120, i32 2}
!126 = !{ptr @gs_print_header._entry.59, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @gs_print_header._entry_ptr.61, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 121, i32 2}
!130 = !{ptr @gs_print_header._entry.62, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @gs_print_header._entry_ptr.64, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 122, i32 2}
!134 = !{ptr @gs_print_header._entry.65, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @gs_print_header._entry_ptr.67, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 123, i32 2}
!138 = !{ptr @gs_print_header._entry.68, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @gs_print_header._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 279, i32 2}
!142 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @gs_set_download_method._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @gs_set_download_method._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 283, i32 2}
!147 = !{ptr @gs_set_download_method._entry.73, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @gs_set_download_method._entry_ptr.75, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 214, i32 3}
!151 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @gs_download_image._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @gs_download_image._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 233, i32 2}
!156 = !{ptr @gs_download_image._entry.78, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @gs_download_image._entry_ptr.80, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 238, i32 2}
!160 = !{ptr @gs_download_image._entry.81, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @gs_download_image._entry_ptr.83, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 242, i32 3}
!164 = !{ptr @gs_download_image._entry.84, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @gs_download_image._entry_ptr.86, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 248, i32 4}
!168 = !{ptr @gs_download_image._entry.87, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @gs_download_image._entry_ptr.89, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 254, i32 3}
!172 = !{ptr @gs_download_image._entry.90, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @gs_download_image._entry_ptr.92, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 258, i32 2}
!176 = !{ptr @gs_download_image._entry.93, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @gs_download_image._entry_ptr.95, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/gs_fpgaboot/gs_fpgaboot.c", i32 269, i32 2}
!180 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @gs_release_image._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @gs_release_image._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
